# frozen_string_literal: true

require_relative '../common/money'

module AmazonBusinessApi
  class LineItemLevelFeeApportionmentDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :associated_order_line_item_id, type: LedgerSync::Type::String
    attribute :units, type: LedgerSync::Type::Integer
    references_one :unit_tax_exclusive_fee, to: Money
    references_one :unit_tax_amount, to: Money
  end
end
