# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductResult
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :asin
      attribute :asinType
      attribute :signedProductId
      references_many :offers, deserializer: Offer::Deserializer
      attribute :features
      references_many :editorialReviews, deserializer: EditorialReview::Deserializer
      references_many :taxonomies, deserializer: Taxonomy::Deserializer
      attribute :title
      attribute :url
      attribute :format
      attribute :productDescription
      attribute :upcValues
      attribute :eanValues
    end
  end
end
