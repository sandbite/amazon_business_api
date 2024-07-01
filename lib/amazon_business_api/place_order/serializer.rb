# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :lineItems, resource_attribute: :line_items
      attribute :attributes, resource_attribute: :place_order_attributes
      attribute :expectations, resource_attribute: :place_order_expectations
    end
  end
end
