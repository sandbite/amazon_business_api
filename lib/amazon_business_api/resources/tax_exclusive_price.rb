# frozen_string_literal: true

require_relative 'common/money'

module AmazonBusinessApi
  class TaxExclusivePrice < AmazonBusinessApi::Resource
    references_one :tax_exclusive_amount, to: Money
    attribute :display_string, type: LedgerSync::Type::String
    attribute :formatted_price, type: LedgerSync::Type::String
    attribute :label, type: LedgerSync::Type::String
  end
end
