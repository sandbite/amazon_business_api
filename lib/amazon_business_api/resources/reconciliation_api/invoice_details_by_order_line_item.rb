# frozen_string_literal: true

require_relative 'order_line_item'
require_relative 'invoice_detail'

module AmazonBusinessApi
  class InvoiceDetailsByOrderLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    references_one :order_line_item, to: OrderLineItem
    references_many :invoice_details, to: InvoiceDetail
  end
end
