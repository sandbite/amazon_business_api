# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByAsins
    class Serializer < AmazonBusinessApi::Serializer
      attribute :productIds
      attribute :productRegion
      attribute :shippingRegion
      attribute :locale
      attribute :shippingPostalCode
      attribute :quantity
      attribute :facets
    end
  end
end
