# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class Price < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#price
    references_one :value, to: Money
    attribute :formattedPrice, type: LedgerSync::Type::String
    attribute :priceType, type: LedgerSync::Type::String
  end
end
