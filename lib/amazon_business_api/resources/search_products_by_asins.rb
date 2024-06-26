# frozen_string_literal: true

require_relative '../types/array'
require_relative 'search_product_result'

module AmazonBusinessApi
  class SearchProductsByKeyword < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    attribute :keywords, type: LedgerSync::Type::String
    attribute :product_region, type: LedgerSync::Type::String
    attribute :shipping_region, type: LedgerSync::Type::String
    attribute :locale, type: LedgerSync::Type::String
    attribute :shipping_postal_code, type: LedgerSync::Type::String

    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsbyasinsrequest
    references_many :products, to: SearchProductResult
    attribute :matching_product_count, type: LedgerSync::Type::Integer
    attribute :not_found_asins, type: Type::Array
  end
end
