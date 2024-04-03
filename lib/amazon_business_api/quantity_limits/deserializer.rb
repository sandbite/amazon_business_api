# frozen_string_literal: true

module AmazonBusinessApi
  class QuantityLimits
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :max_quantity, hash_attribute: :maxQuantity
      attribute :min_quantity, hash_attribute: :minQuantity
    end
  end
end
