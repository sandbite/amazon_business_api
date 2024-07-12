# frozen_string_literal: true

require_relative '../request_line_item/serializer'
require_relative '../place_order_attribute/serializer'
require_relative '../place_order_expectation/serializer'

module AmazonBusinessApi
  class PlaceOrder
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      references_many :lineItems, resource_attribute: :line_items, serializer: RequestLineItem::Serializer
      references_many :attributes, resource_attribute: :place_order_attributes, serializer: PlaceOrderAttribute::Serializer
      references_many :expectations, resource_attribute: :place_order_expectations, serializer: PlaceOrderExpectation::Serializer
    end
  end
end



