# frozen_string_literal: true

require_relative 'money'
require_relative 'line_item_apportionment_detail'
require_relative 'line_item_level_fee_detail'

module AmazonBusinessApi
  class TransactionDataItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :tax_rate, type: LedgerSync::Type::String
    attribute :unit, type: LedgerSync::Type::String
    attribute :asin, type: LedgerSync::Type::String
    attribute :title, type: LedgerSync::Type::String
    references_one :unit_tax_inclusive_price, to: Money
    references_one :unit_tax_exclusive_price, to: Money
    references_one :unit_tax_amount, to: Money
    references_one :total_amount, to: Money
    references_one :discount, to: Money
    references_many :apportionment, to: LineItemApportionmentDetail
    references_many :fees, to: LineItemLevelFeeDetail
  end
end
