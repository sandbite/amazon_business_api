# frozen_string_literal: true

require 'typhoeus'
require 'aws-sigv4'
require_relative './errors/auth_error'

module AmazonBusinessApi
  class Client
    include LedgerSync::Ledgers::Client::Mixin
    attr_reader :region, :debug, :client_id, :client_secret, :email, :refresh_token, :save_access_token, :get_access_token

    DEFAULT_HEADERS = { 'Accept' => 'application/json',
                        'Content-Type' => 'application/json' }.freeze

    AUTHENTICATION_ENDPOINT = 'https://api.amazon.com/auth/O2/token'

    REGIONS = {
      us: {
        endpoint: 'https://na.business-api.amazon.com',
        product_region: 'US',
        aws_region: 'us-east-1'
      },
      uk: {
        endpoint: 'https://eu.business-api.amazon.com',
        product_region: 'UK',
        aws_region: 'eu-west-1'
      }
    }.freeze

    def initialize(client_id:, client_secret:, email:, refresh_token:, save_access_token:, # rubocop:disable Metrics/ParameterLists
                   get_access_token:, region: :us, debug: false)
      @region = REGIONS.fetch(region.to_sym)
      @client_id = client_id
      @client_secret = client_secret
      @email = email
      @refresh_token = refresh_token
      @save_access_token = save_access_token
      @get_access_token = get_access_token
      @debug = debug
    end

    def access_token_key
      Digest::MD5.hexdigest("#{client_id} #{refresh_token}")
    end

    def access_token
      return request_access_token[:access_token] unless get_access_token

      stored_token = get_access_token.call(access_token_key)
      return stored_token if stored_token

      new_token = request_access_token
      save_access_token&.call(access_token_key, new_token)
      new_token[:access_token]
    end

    def request_access_token # rubocop:disable Metrics/MethodLength
      form_params = {
        'grant_type' => 'refresh_token',
        'client_id' => client_id,
        'client_secret' => client_secret,
        'refresh_token' => refresh_token
      }

      response = Typhoeus::Request.new(AUTHENTICATION_ENDPOINT, {
                                         method: :post,
                                         headers: {
                                           'Content-Type' => 'application/x-www-form-urlencoded',
                                           'Accept' => 'application/json'
                                         },
                                         body: form_params
                                       }).run

      data = JSON.parse("[#{response.body}]", symbolize_names: true)[0]
      unless data && data[:access_token]
        raise StandardError, { code: response.code,
                               response_headers: response.headers,
                               response_body: data }.to_s
      end
      data
    end

    def api(http_method, path, opts = {})
      unsigned_request = build_request(http_method, path, opts:)
      aws_headers = auth_headers(http_method, unsigned_request.url, unsigned_request.encoded_body)
      signed_opts = opts.merge(header_params: aws_headers.merge(opts[:header_params] || {}))
      request = LedgerSync::Ledgers::Request.new(
        body: signed_opts.fetch(:body, nil),
        headers: signed_opts.fetch(:header_params, {}).merge(DEFAULT_HEADERS),
        method: http_method,
        url: region[:endpoint] + path,
        params: signed_opts.fetch(:form_params, {})
      )

      request.perform
    end

    def request(method:, url:, body: nil, headers: {})
      LedgerSync::Ledgers::Request.new(
        client: self,
        body:,
        headers:,
        method:,
        url:
      ).perform
    end

    def signed_request_headers(http_method, url, body)
      request_config = {
        service: 'execute-api',
        region: region[:aws_region],
      }

      request_config[:access_key_id] = client_id  # aws_access_key_id
      request_config[:secret_access_key] = client_secret # aws_secret_access_key
      signer = Aws::Sigv4::Signer.new(request_config)
      signer.sign_request(http_method: http_method.to_s, url:, body:).headers
    end

    def auth_headers(http_method, url, body)
      signed_request_headers(http_method, url, body)
        .merge({
                 'x-amz-access-token' => access_token
               })
    end

    def build_request(http_method, path, opts: {}) # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      base_url = region[:endpoint]
      url = base_url + path
      http_method = http_method.to_sym.downcase

      header_params = DEFAULT_HEADERS.merge(opts[:header_params] || {})
      query_params = opts[:query_params] || {}
      form_params = opts[:form_params] || {}

      req_opts = {
        method: http_method,
        headers: header_params,
        params: query_params,
        params_encoding: nil,
        timeout: 20,
        ssl_verifypeer: true,
        ssl_verifyhost: 2,
        sslcert: nil,
        sslkey: nil,
        verbose: debug
      }

      if %i[post patch put delete].include?(http_method)
        req_body = build_request_body(header_params, form_params, opts[:body])
        req_opts.update body: req_body
        puts "HTTP request body param ~BEGIN~\n#{req_body}\n~END~\n" if debug
      end

      Typhoeus::Request.new(url, req_opts)
    end

    def build_request_body(header_params, form_params, body) # rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Metrics/MethodLength
      if header_params['Content-Type'] == 'application/x-www-form-urlencoded' ||
        header_params['Content-Type'] == 'multipart/form-data'
        data = {}
        form_params.each do |key, value|
          data[key] = case value
                      when ::File, ::Array, nil
                        value
                      else
                        value.to_s
                      end
        end
        data
      elsif header_params['Content-Type'] == 'application/json'
        body.to_json
      elsif body
        body.is_a?(String) ? body : body.to_json
      end
    end

    def exchange_auth_code_for_refresh_token(auth_code:) # rubocop:disable Metrics/MethodLength
      data, status_code, headers = Typhoeus::Request.new(AUTHENTICATION_ENDPOINT, {
        method: :post,
        headers: {
          'Content-Type' => 'application/x-www-form-urlencoded',
          'Accept' => 'application/json'
        },
        body: {
          grant_type: 'authorization_code',
          code: auth_code,
          client_id:,
          client_secret:
        }
      }).run

      unless data && data[:refresh_token]
        raise AmazonBusinessApi::Errors::AuthError.new(code: status_code, response_headers: headers,
                                                           response_body: data)
      end

      data[:refresh_token]
    end

    def self.new_from_env # rubocop:disable Metrics/AbcSize, Metrics/MethodLength
      new(
        client_id: ENV.fetch('AMAZON_BUSINESS_API_CLIENT_ID'),
        client_secret: ENV.fetch('AMAZON_BUSINESS_API_CLIENT_SECRET'),
        email: ENV.fetch('AMAZON_BUSINESS_API_EMAIL'),
        refresh_token: ENV.fetch('AMAZON_BUSINESS_API_REFRESH_TOKEN'),
        save_access_token: lambda { |_key, token|
          File.open('.env', 'w') do |file|
            ENV.each do |k, v|
              unless k.start_with?('AMAZON_BUSINESS_API_') &&
                     k != 'AMAZON_BUSINESS_API_ACCESS_TOKEN'
                next
              end

              file.puts "#{k}=#{v}"
            end
            token[:expires_at] = Time.now.to_i + token[:expires_in] - 60
            file.puts "AMAZON_BUSINESS_API_ACCESS_TOKEN=#{token.to_json}"
          end
        },
        get_access_token: lambda { |_key|
          Dotenv.load('.env', overwrite: true)
          return nil unless ENV['AMAZON_BUSINESS_API_ACCESS_TOKEN'].present?

          token = JSON.parse(ENV['AMAZON_BUSINESS_API_ACCESS_TOKEN'], symbolize_names: true)
          return nil if Time.now.to_i > token[:expires_at]

          token[:access_token]
        },
        region: ENV.fetch('AMAZON_BUSINESS_API_REGION', 'us')
      )
    end
  end
end
