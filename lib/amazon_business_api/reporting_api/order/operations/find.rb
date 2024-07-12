# frozen_string_literal: true

module AmazonBusinessApi
  class Order
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:order_id).filled(:string)
          end
        end

        private

        def hash_to_deserialize
          orders = response.body['orders'] || []
          orders.first
        end

        def url
          "/reports/2021-01-08/orders/#{resource.order_id}?includeLineItems=true&includeShipments=true&includeCharges=true"
        end

        def opts
          {}
        end

      end
    end
  end
end
