# frozen_string_literal: true
#
require_relative '../money/deserializer'

module AmazonBusinessApi
  class Price
    class Deserializer < AmazonBusinessApi::Deserializer
      references_one :value, deserializer: Money::Deserializer
      attribute :formatted_price, hash_attribute: :formattedPrice
      attribute :price_type, hash_attribute: :priceType
    end
  end
end
