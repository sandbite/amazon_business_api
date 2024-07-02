# frozen_string_literal: true

module AmazonBusinessApi
  class ProductReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :id, resource_attribute: :id
      attribute :productReferenceType, resource_attribute: :product_reference_type
    end
  end
end
