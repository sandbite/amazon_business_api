# frozen_string_literal: true

module AmazonBusinessApi
  class Seller < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :seller_name, type: LedgerSync::Type::String
    attribute :seller_city, type: LedgerSync::Type::String
    attribute :seller_state, type: LedgerSync::Type::String
    attribute :seller_postal_code, type: LedgerSync::Type::String
  end
end
