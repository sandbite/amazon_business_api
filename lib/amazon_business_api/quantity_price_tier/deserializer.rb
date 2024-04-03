# frozen_string_literal: true

require_relative '../price/deserializer'

module AmazonBusinessApi
  class QuantityPriceTier
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :quantity_display, hash_attribute: :quantityDisplay
      references_one :unit_price, deserializer: Price::Deserializer, hash_attribute: :unitPrice
    end
  end
end
