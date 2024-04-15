# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByKeyword
    class Serializer < AmazonBusinessApi::Serializer
      attribute :keywords
      # attribute :shippingPostalCode, resource_attribute: :shipping_postal_code
    end
  end
end
