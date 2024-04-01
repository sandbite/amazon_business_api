# frozen_string_literal: true

require_relative '../types/array'
require_relative 'search_product_result'

module AmazonBusinessApi
  class SearchProductsByAsins < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    attribute :productIds, type: Type::Array
    attribute :productRegion, type: LedgerSync::Type::String
    attribute :shippingRegion, type: LedgerSync::Type::String
    attribute :locale, type: LedgerSync::Type::String
    attribute :shippingPostalCode, type: LedgerSync::Type::String
    attribute :quantity, type: LedgerSync::Type::Integer # The number of units the customer intends to purchase. This helps Amazon Business determine quantity-based discounts if an eligible offer is present. Defaults to 1.
    attribute :facets, type: Type::Array # Valid values are: OFFERS, IMAGES

    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    references_many :products, to: SearchProductResult
    attribute :matchingProductCount, type: LedgerSync::Type::Integer
    attribute :notFoundAsins, type: Type::Array
  end
end
