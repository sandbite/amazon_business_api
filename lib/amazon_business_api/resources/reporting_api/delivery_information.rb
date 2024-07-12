# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryInformation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :expected_delivery_date, type: LedgerSync::Type::String
    attribute :delivery_status, type: LedgerSync::Type::String # probably one of: DELIVERED NOT_DELIVERED NOT_AVAILABLE
  end
end
