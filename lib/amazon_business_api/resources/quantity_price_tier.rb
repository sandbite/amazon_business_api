# frozen_string_literal: true

require_relative 'price'

module AmazonBusinessApi
  class QuantityPriceTier < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#quantitypricetier
    attribute :quantity_display, type: LedgerSync::Type::String
    references_one :unit_price, to: Price
  end
end
