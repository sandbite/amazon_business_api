# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryInformation
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :expected_delivery_date, hash_attribute: :expectedDeliveryDate
      attribute :delivery_status, hash_attribute: :deliveryStatus
    end
  end
end
