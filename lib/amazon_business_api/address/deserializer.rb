# frozen_string_literal: true

module AmazonBusinessApi
  class Address
    class Deserializer < AmazonBusinessApi::Deserializer
    attribute :address_type, hash_attribute: :addressType
    attribute :full_name, hash_attribute: :fullName
    attribute :phone_number, hash_attribute: :phoneNumber
    attribute :company_name, hash_attribute: :companyName
    attribute :address_line1, hash_attribute: :addressLine1
    attribute :address_line2, hash_attribute: :addressLine2
    attribute :city, hash_attribute: :city
    attribute :state_or_region, hash_attribute: :stateOrRegion
    attribute :postal_code, hash_attribute: :postalCode
    attribute :country_code, hash_attribute: :countryCode
    end
  end
end
