# frozen_string_literal: true

module AmazonBusinessApi
  class Seller < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :sellerName, type: LedgerSync::Type::String
    attribute :sellerCity, type: LedgerSync::Type::String
    attribute :sellerState, type: LedgerSync::Type::String
    attribute :sellerPostalCode, type: LedgerSync::Type::String
  end
end
