# frozen_string_literal: true

module AmazonBusinessApi
  class Address
    class Serializer < AmazonBusinessApi::Serializer
      attribute :addressType, resource_attribute: :address_type
      attribute :fullName, resource_attribute: :full_name
      attribute :phoneNumber, resource_attribute: :phone_number
      attribute :companyName, resource_attribute: :company_name
      attribute :addressLine1, resource_attribute: :address_line1
      attribute :addressLine2, resource_attribute: :address_line2
      attribute :city, resource_attribute: :city
      attribute :stateOrRegion, resource_attribute: :state_or_region
      attribute :postalCode, resource_attribute: :postal_code
      attribute :countryCode, resource_attribute: :country_code
    end
  end
end
