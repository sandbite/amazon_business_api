# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryInformation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :expectedDeliveryDate, type: LedgerSync::Type::String
    attribute :deliveryStatus, type: LedgerSync::Type::String # probably one of: DELIVERED NOT_DELIVERED NOT_AVAILABLE
  end
end
