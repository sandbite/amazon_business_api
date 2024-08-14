# frozen_string_literal: true

module AmazonBusinessApi
  class ReconciliationDetail
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        private

        def hash_to_deserialize
          return [] unless response.body.present?

          # Uncomment if you need "fees" and "transactionDataItems"
          # response.body['invoiceDetailsByOrderLineItems'].map do |line_item|
          #   line_item['invoiceDetails'].map do |invoice_detail|
          #     unless invoice_detail['transactionDataItems'].present?
          #       invoice_detail['transactionDataItems'] = []
          #     end
          #     invoice_detail['fees'] = [] unless invoice_detail['fees'].present?
          #     invoice_detail
          #   end
          # end

          response.body
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
