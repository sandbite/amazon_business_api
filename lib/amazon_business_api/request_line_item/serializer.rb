# frozen_string_literal: true

module AmazonBusinessApi
  class RequestLineItem
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :quantity, resource_attribute: :quantity
      attribute :attributes, resource_attribute: :place_order_attributes
      attribute :expectations, resource_attribute: :place_order_expectations
    end
  end
end
