# frozen_string_literal: true

require_relative '../place_order_attribute/serializer'
require_relative '../place_order_expectation/serializer'

module AmazonBusinessApi
  class RequestLineItem
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :quantity, resource_attribute: :quantity
      references_many :attributes, resource_attribute: :place_order_attributes, serializer: PlaceOrderAttribute::Serializer
      references_many :expectations, resource_attribute: :place_order_expectations, serializer: PlaceOrderExpectation::Serializer
    end
  end
end
