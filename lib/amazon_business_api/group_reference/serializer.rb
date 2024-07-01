# frozen_string_literal: true

module AmazonBusinessApi
  class GroupReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :groupReferenceType, resource_attribute: :group_reference_type
      attribute :identifier, resource_attribute: :identifier
    end
  end
end
