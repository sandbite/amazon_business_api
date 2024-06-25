# frozen_string_literal: true

require_relative '../buying_customer/deserializer'
require_relative '../money/deserializer'
require_relative '../line_item/deserializer'
require_relative '../shipment/deserializer'
require_relative '../charge/deserializer'

module AmazonBusinessApi
  class PlaceOrder
    class Deserializer < AmazonBusinessApi::Deserializer
      references_many :line_items, deserializer: LineItem::Deserializer, hash_attribute: :lineItems
    end
  end
end
