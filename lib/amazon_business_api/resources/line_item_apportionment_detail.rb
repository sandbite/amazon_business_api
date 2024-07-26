# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class LineItemApportionmentDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :order_line_item_id, type: LedgerSync::Type::String
    attribute :line_number, type: LedgerSync::Type::Integer
    attribute :units, type: LedgerSync::Type::Integer
    references_one :unit_price, to: Money
    references_one :tax_amount, to: Money
  end
end
