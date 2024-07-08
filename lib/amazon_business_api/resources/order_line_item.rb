# frozen_string_literal: true

module AmazonBusinessApi
  class OrderLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :order_id, type: LedgerSync::Type::String
    attribute :order_line_item_id, type: LedgerSync::Type::String
    attribute :shipment_id, type: LedgerSync::Type::String
  end
end
