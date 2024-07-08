# frozen_string_literal: true

module AmazonBusinessApi
  class UserReference
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :user_reference_type, hash_attribute: :userReferenceType
      attribute :email_address, hash_attribute: :emailAddress
    end
  end
end
