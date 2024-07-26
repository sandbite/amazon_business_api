# frozen_string_literal: true

require_relative '../order_line_item/deserializer'
require_relative '../invoice_detail/deserializer'

module AmazonBusinessApi
  class InvoiceDetailsByOrderLineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      references_one :order_line_item, deserializer: OrderLineItem::Deserializer, hash_attribute: :orderLineItem
      references_many :invoice_details, deserializer: InvoiceDetail::Deserializer, hash_attribute: :invoiceDetails
    end
  end
end
