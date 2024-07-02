# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrderExpectation
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :expectationType, resource_attribute: :expectation_type
      attribute :source, resource_attribute: :source

      def serialize(resource:)
        hash = super
        hash[:amount] = Amount::Serializer.new.serialize(resource: resource.amount)
        hash
      end
    end
  end
end
