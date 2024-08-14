# frozen_string_literal: true

require_relative '../invoice_details_by_order_line_item/deserializer'

module AmazonBusinessApi
  class ReconciliationDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      references_many :invoice_details_by_order_line_items, deserializer: InvoiceDetailsByOrderLineItem::Deserializer, hash_attribute: :invoiceDetailsByOrderLineItems
    end
  end
end
