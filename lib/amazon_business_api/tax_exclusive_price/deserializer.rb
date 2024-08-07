# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class TaxExclusivePrice
    class Deserializer < AmazonBusinessApi::Deserializer
      references_one :tax_exclusive_amount,
                     deserializer: Money::Deserializer,
                     hash_attribute: :taxExclusiveAmount
      attribute :display_string, hash_attribute: :displayString
      attribute :formatted_price, hash_attribute: :formattedPrice
      attribute :label
    end
  end
end