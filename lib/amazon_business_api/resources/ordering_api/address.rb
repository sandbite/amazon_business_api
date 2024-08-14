# frozen_string_literal: true

module AmazonBusinessApi
  class Address < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :address_type, type: LedgerSync::Type::String
    attribute :full_name, type: LedgerSync::Type::String
    attribute :phone_number, type: LedgerSync::Type::String
    attribute :company_name, type: LedgerSync::Type::String
    attribute :address_line1, type: LedgerSync::Type::String
    attribute :address_line2, type: LedgerSync::Type::String
    attribute :city, type: LedgerSync::Type::String
    attribute :state_or_region, type: LedgerSync::Type::String
    attribute :postal_code, type: LedgerSync::Type::String
    attribute :country_code, type: LedgerSync::Type::String
  end
end
