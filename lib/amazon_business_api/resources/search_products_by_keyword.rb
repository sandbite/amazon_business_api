# frozen_string_literal: true

require_relative '../types/array'
require_relative 'search_product_result'

module AmazonBusinessApi
  class SearchProductsByAsins < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    attribute :product_ids, type: Type::Array
    attribute :product_region, type: LedgerSync::Type::String
    attribute :shipping_region, type: LedgerSync::Type::String
    attribute :locale, type: LedgerSync::Type::String
    attribute :shipping_postal_code, type: LedgerSync::Type::String
    attribute :quantity, type: LedgerSync::Type::Integer # The number of units the customer intends to purchase. This helps Amazon Business determine quantity-based discounts if an eligible offer is present. Defaults to 1.
    attribute :facets, type: Type::Array # Valid values are: OFFERS, IMAGES

    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    references_many :products, to: SearchProductResult
    attribute :matching_product_count, type: LedgerSync::Type::Integer
    attribute :not_found_asins, type: Type::Array
  end
end
