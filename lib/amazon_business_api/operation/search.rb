# frozen_string_literal: true

require_relative '../operation'

module AmazonBusinessApi
  class Operation
    class Search
      include AmazonBusinessApi::Operation::Mixin

      def operate
        return failure(response.body&.[]('errors') || 'Amazon Business API request failed') if response.failure?

        success(
          resource: deserializer.deserialize(
            hash: hash_to_deserialize,
            resource:
          ),
          response: response.body
        )
      end

      private

      def request_method
        :post
      end

      def response
        @response ||= client.api(request_method, url, opts)
      end

      def hash_to_deserialize
        response.body
      end

      def url
        raise NotImplementedError, self.class.name
      end

      def opts
        raise NotImplementedError, self.class.name
      end
    end
  end
end
