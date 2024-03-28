# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByAsins
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :matchingProductCount
      attribute :notFoundAsins
      references_many :products, deserializer: SearchProductResult::Deserializer
    end
  end
end
