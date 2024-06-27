# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    module Operations
      class Create < AmazonBusinessApi::Operation::Create
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:external_id).filled(:string)
          end
        end

        private

        def ledger_resource_type_for_path
          "/ordering/2022-10-30/orders"
        end

        def url
          ledger_resource_type_for_path
        end

        def opts
          {
            body: serializer.serialize(resource:)
          }
        end
      end
    end
  end
end
