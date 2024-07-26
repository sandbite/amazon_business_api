# frozen_string_literal: true

require_relative 'place_order_attribute'
require_relative 'place_order_expectation'

module AmazonBusinessApi
  class RequestLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :place_order_attributes, to: PlaceOrderAttribute
    references_many :place_order_expectations, to: PlaceOrderExpectation
  end
end
