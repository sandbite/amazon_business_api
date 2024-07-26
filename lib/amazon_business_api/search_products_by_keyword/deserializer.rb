# frozen_string_literal: true

require_relative '../search_product_result/deserializer'

module AmazonBusinessApi
  class SearchProductsByKeyword
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :matching_product_count, hash_attribute: :matchingProductCount
      references_many :products, deserializer: SearchProductResult::Deserializer
    end
  end
end
