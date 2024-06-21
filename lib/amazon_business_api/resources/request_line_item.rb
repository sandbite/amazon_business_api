# frozen_string_literal: true

require_relative 'attribute'
require_relative 'expectation'

module AmazonBusinessApi
  class RequestLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :attributes, to: Attribute
    references_many :expectations, to: Expectation
  end
end