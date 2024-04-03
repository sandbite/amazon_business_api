# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByAsins
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :matching_product_count, hash_attribute: :matchingProductCount
      attribute :not_found_asins, hash_attribute: :notFoundAsins
      references_many :products, deserializer: SearchProductResult::Deserializer
    end
  end
end
