# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByAsins
    class Serializer < AmazonBusinessApi::Serializer
      attribute :productIds, resource_attribute: :product_ids
      # attribute :productRegion
      # attribute :shippingRegion
      # attribute :locale
      attribute :shippingPostalCode, resource_attribute: :shipping_postal_code
      attribute :quantity
      attribute :facets
    end
  end
end
