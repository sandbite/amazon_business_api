# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:external_id).filled(:string)
          end
        end

        private

        def url
          "/ordering/2022-10-30/orders/#{resource.external_id}"
        end

        def opts
          {}
        end

      end
    end
  end
end
