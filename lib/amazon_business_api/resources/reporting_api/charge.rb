# frozen_string_literal: true

require_relative '../common/money'

module AmazonBusinessApi
  class Charge < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :transaction_date, type: LedgerSync::Type::String
    attribute :transaction_id, type: LedgerSync::Type::String
    references_one :amount, to: Money
    attribute :payment_instrument_type, type: LedgerSync::Type::String
    attribute :payment_instrument_last4_digits, type: LedgerSync::Type::String
  end
end
