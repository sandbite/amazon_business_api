# frozen_string_literal: true

require_relative 'place_order_expectations/amount'

module AmazonBusinessApi
  class PlaceOrderExpectation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :expectation_type, type: LedgerSync::Type::String
    references_one :amount, to: Amount
    attribute :source, type: LedgerSync::Type::String
  end
end
