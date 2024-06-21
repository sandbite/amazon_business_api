# frozen_string_literal: true

require_relative 'expectations/amount'

module AmazonBusinessApi
  class Expectation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :expectation_type, type: LedgerSync::Type::String
    references_one :amount, to: Amount
    attribute :source, type: LedgerSync::Type::String
  end
end
