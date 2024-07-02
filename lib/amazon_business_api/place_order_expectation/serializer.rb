# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrderExpectation
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :expectationType, resource_attribute: :expectation_type
      attribute :amount, serializer: Money::Serializer, resource_attribute: :amount
      attribute :source, resource_attribute: :source
    end
  end
end
