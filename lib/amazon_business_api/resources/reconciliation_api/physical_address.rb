# frozen_string_literal: true

module AmazonBusinessApi
  class PhysicalAddress < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :fullName, type: LedgerSync::Type::String
    attribute :phoneNumber, type: LedgerSync::Type::String
    attribute :companyName, type: LedgerSync::Type::String
    attribute :addressLine1, type: LedgerSync::Type::String
    attribute :addressLine2, type: LedgerSync::Type::String
    attribute :city, type: LedgerSync::Type::String
    attribute :stateOrRegion, type: LedgerSync::Type::String
    attribute :postalCode, type: LedgerSync::Type::String
    attribute :countryCode, type: LedgerSync::Type::String
  end
end
