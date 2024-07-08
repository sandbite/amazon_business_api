# frozen_string_literal: true

module AmazonBusinessApi
  class GroupReference
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :group_reference_type, hash_attribute: :groupReferenceType
      attribute :identifier, hash_attribute: :identifier
    end
  end
end
