# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class TaxDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :rate, type: LedgerSync::Type::String
    references_one :inclusive_total, to: Money
    references_one :exclusive_total, to: Money
    references_one :amount, to: Money
  end
end
