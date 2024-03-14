# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryInformation
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :expectedDeliveryDate
      attribute :deliveryStatus
    end
  end
end
