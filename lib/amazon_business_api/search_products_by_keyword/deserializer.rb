# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByKeyword
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :matching_product_count, hash_attribute: :matchingProductCount
      references_many :products, deserializer: SearchProductResult::Deserializer
    end
  end
end
