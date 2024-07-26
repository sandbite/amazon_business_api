# frozen_string_literal: true

module AmazonBusinessApi
  class ReconciliationDetail
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        private

        def hash_to_deserialize
          response.body || []
        end

        def url
          '/reconciliation/2021-01-08/invoices'
        end

        def opts
          {
            body: serializer.serialize(resource:)
          }
        end

        def request_method
          :post
        end
      end
    end
  end
end
