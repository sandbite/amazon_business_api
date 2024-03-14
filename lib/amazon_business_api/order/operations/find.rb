# frozen_string_literal: true

module AmazonBusinessApi
  class Order
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:orderId).filled(:string)
          end
        end

        private

        def hash_to_deserialize
          orders = response.body['orders'] || []
          orders.first
        end

        def request_method
          :get
        end

        def url
          "/reports/2021-01-08/orders/#{resource.orderId}"
        end

        def opts
          {
            query_params:
          }
        end

        def query_params
          {
            includeLineItems: true,
            includeShipments: true,
            includeCharges: true
          }
        end
      end
    end
  end
end
