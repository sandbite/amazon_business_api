# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryRange
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :max
      attribute :min
    end
  end
end
