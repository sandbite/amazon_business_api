# frozen_string_literal: true

require 'typhoeus'

module LedgerSync
  module AmazonBusinessApi
    class Client
      include Ledgers::Client::Mixin

      DEFAULT_HEADERS = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }.freeze

      AUTHENTICATION_ENDPOINT = 'https://api.amazon.com/auth/O2/token'

      REGIONS = {
        us: {
          endpoint: 'https://na.business-api.amazon.com',
          product_region: 'US'
        },
        uk: {
          endpoint: 'https://eu.business-api.amazon.com',
          product_region: 'UK'
        }
      }.freeze

      def initialize(client_id:, client_secret:, email:, refresh_token:, save_access_token:,
                     get_access_token:, region: :us)
        @region = REGIONS.fetch(region.to_sym)
        @client_id = client_id
        @client_secret = client_secret
        @email = email
        @refresh_token = refresh_token
        @save_access_token = save_access_token
        @get_access_token = get_access_token
      end

      def access_token_key
        Digest::MD5.hexdigest("#{@client_id} #{@refresh_token}")
      end

      def access_token
        return request_access_token[:access_token] unless @get_access_token

        stored_token = @get_access_token.call(access_token_key)
        return stored_token if stored_token

        new_token = request_access_token
        @save_access_token&.call(access_token_key, new_token)
        new_token[:access_token]
      end

      def request_access_token # rubocop:disable Metrics/MethodLength
        form_params = {
          "grant_type" => @refresh_token ? 'refresh_token' : 'client_credentials',
          "client_id" => @client_id,
          "client_secret" => @client_secret
        }
        form_params.merge!("refresh_token" => @refresh_token) if @refresh_token.present?

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

      def request(method:, url:, body: nil, headers: {})
        LedgerSync::Ledgers::Request.new(
          client: self,
          body: body,
          headers: headers,
          method: method,
          url: url
        ).perform
      end
    end
  end
end
