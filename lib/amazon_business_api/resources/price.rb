# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class Price < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#price
    references_one :value, to: Money
    attribute :formatted_price, type: LedgerSync::Type::String
    attribute :price_type, type: LedgerSync::Type::String
  end
end
