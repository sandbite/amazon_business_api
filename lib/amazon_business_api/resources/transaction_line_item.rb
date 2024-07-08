# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class TransactionLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :refund_reason, type: LedgerSync::Type::String
    references_one :total_amount, to: Money
    references_one :principal_amount, to: Money
    references_one :shipping_charge, to: Money
    references_one :regulatory_fee, to: Money
    references_one :gift_wrapping_charge, to: Money
    references_one :discount, to: Money
    references_one :tax, to: Money
    references_one :unit_price, to: Money
    attribute :tax_rate, type: LedgerSync::Type::String
    attribute :order_id, type: LedgerSync::Type::String
    attribute :unspsc, type: LedgerSync::Type::String
    attribute :order_line_item_id, type: LedgerSync::Type::String
    attribute :purchase_order_number, type: LedgerSync::Type::String
    attribute :purchase_order_line_item_id, type: LedgerSync::Type::String
    attribute :asin, type: LedgerSync::Type::String
    attribute :product_title, type: LedgerSync::Type::String
    attribute :item_quantity, type: LedgerSync::Type::Integer
    attribute :shipment_id, type: LedgerSync::Type::String
    attribute :shipment_date, type: LedgerSync::Type::String
    attribute :merchant_legal_name, type: LedgerSync::Type::String
    attribute :budget_id, type: LedgerSync::Type::String
    attribute :business_order_info, type: LedgerSync::Type::Hash
  end
end
