# frozen_string_literal: true

module AmazonBusinessApi
  class RequestLineItem
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :quantity, resource_attribute: :quantity

      def serialize(resource:)
        hash = super
        hash[:attributes] = resource.place_order_attributes.map { |attr| PlaceOrderAttribute::Serializer.new.serialize(resource: attr) }
        hash[:expectations] = resource.place_order_expectations.map { |exp| PlaceOrderExpectation::Serializer.new.serialize(resource: exp) }
        hash
      end
    end
  end
end
