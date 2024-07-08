# frozen_string_literal: true

require_relative 'invoice_details_by_order_line_item'
require_relative 'order_line_item'

module AmazonBusinessApi
  class ReconciliationDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    references_many :invoice_details_by_order_line_items, to: InvoiceDetailsByOrderLineItem

    references_many :order_line_items, to: OrderLineItem
  end
end
