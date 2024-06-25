# frozen_string_literal: true

module AmazonBusinessApi
  class ResultPlaceOrder
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:external_id).filled(:string)
          end
        end

        private

        def hash_to_deserialize
          response.body
        end

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
