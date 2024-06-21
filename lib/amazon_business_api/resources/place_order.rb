# frozen_string_literal: true

require_relative 'request_line_item'
require_relative 'attribute'
require_relative 'expectation'

module AmazonBusinessApi
  class PlaceOrder < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    references_many :line_items, to: RequestLineItem
    references_many :attributes, to: Attribute
    references_many :expectations, to: Expectation
  end
end
