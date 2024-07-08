# frozen_string_literal: true

module AmazonBusinessApi
  class OrderLineItem
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :orderId, resource_attribute: :order_id
      attribute :orderLineItemId, resource_attribute: :order_line_item_id
      attribute :shipmentId, resource_attribute: :shipment_id
    end
  end
end
