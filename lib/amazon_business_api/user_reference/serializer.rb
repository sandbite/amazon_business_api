# frozen_string_literal: true

module AmazonBusinessApi
  class UserReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :userReferenceType, resource_attribute: :user_reference_type
      attribute :emailAddress, resource_attribute: :email_address
    end
  end
end
