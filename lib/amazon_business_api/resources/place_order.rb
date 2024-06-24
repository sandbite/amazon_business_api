# frozen_string_literal: true

require_relative 'request_line_item'
require_relative 'place_order_attribute'
require_relative 'place_order_expectation'

module AmazonBusinessApi
  class PlaceOrder < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    references_many :line_items, to: RequestLineItem
    references_many :place_order_attributes, to: PlaceOrderAttribute
    references_many :place_order_expectations, to: PlaceOrderExpectation
  end
end
