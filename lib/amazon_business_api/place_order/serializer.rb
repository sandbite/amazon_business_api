# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      # attribute :lineItems, resource_attribute: :line_items
      # attribute :attributes, resource_attribute: :place_order_attributes
      # attribute :expectations, resource_attribute: :place_order_expectations

      def serialize(resource:)
        hash = super
        hash[:lineItems] = resource.line_items.map { |item| RequestLineItem::Serializer.new.serialize(resource: item) }
        hash[:attributes] = resource.place_order_attributes.map { |attr| PlaceOrderAttribute::Serializer.new.serialize(resource: attr) }
        hash[:expectations] = resource.place_order_expectations.map { |exp| PlaceOrderExpectation::Serializer.new.serialize(resource: exp) }
        hash
      end
    end
  end
end
