# frozen_string_literal: true

module AmazonBusinessApi
  class ReconciliationDetail
    class Serializer < AmazonBusinessApi::Serializer
      references_many :orderLineItems, resource_attribute: :order_line_items, serializer: OrderLineItem::Serializer
    end
  end
end



