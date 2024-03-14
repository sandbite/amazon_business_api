# frozen_string_literal: true

require_relative '../delivery_information/deserializer'
require_relative '../money/deserializer'

module AmazonBusinessApi
  class Shipment
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :shipmentDate
      attribute :shipmentStatus
      attribute :carrierTracking
      references_one :deliveryInformation, to: DeliveryInformation::Deserializer
      attribute :shipmentQuantity
      references_one :shipmentSubTotal, to: Money::Deserializer
      references_one :shipmentShippingAndHandling, to: Money::Deserializer
      references_one :shipmentPromotion, to: Money::Deserializer
      references_one :shipmentTax, to: Money::Deserializer
      references_one :shipmentNetTotal, to: Money::Deserializer
      attribute :carrierName
    end
  end
end
