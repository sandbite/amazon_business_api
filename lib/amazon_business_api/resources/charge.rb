# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class Charge < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :transactionDate, type: LedgerSync::Type::String
    attribute :transactionId, type: LedgerSync::Type::String
    references_one :amount, to: Money
    attribute :paymentInstrumentType, type: LedgerSync::Type::String
    attribute :paymentInstrumentLast4Digits, type: LedgerSync::Type::String
  end
end
