# frozen_string_literal: true

require_relative 'price'

module AmazonBusinessApi
  class QuantityPriceTier < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#quantitypricetier
    attribute :quantityDisplay, type: LedgerSync::Type::String
    references_one :unitPrice, to: Price
  end
end
