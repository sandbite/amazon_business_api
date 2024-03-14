# frozen_string_literal: true

require_relative 'money'
require_relative 'delivery_information'

module AmazonBusinessApi
  class Shipment < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :shipmentDate, type: LedgerSync::Type::String
    attribute :shipmentStatus, type: LedgerSync::Type::String # maybe SHIPPED
    attribute :carrierTracking, type: LedgerSync::Type::String
    references_one :deliveryInformation, to: DeliveryInformation
    attribute :shipmentQuantity, type: LedgerSync::Type::Integer
    references_one :shipmentSubTotal, to: Money
    references_one :shipmentShippingAndHandling, to: Money
    references_one :shipmentPromotion, to: Money
    references_one :shipmentTax, to: Money
    references_one :shipmentNetTotal, to: Money
    attribute :carrierName, type: LedgerSync::Type::String
  end
end
