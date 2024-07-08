# frozen_string_literal: true

module AmazonBusinessApi
  class OrderLineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :order_id, hash_attribute: :orderId
      attribute :order_line_item_id, hash_attribute: :orderLineItemId
      attribute :shipment_id, hash_attribute: :shipmentId
    end
  end
end
