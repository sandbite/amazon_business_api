# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingOptionReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :id, resource_attribute: :id
      attribute :buyingOptionReferenceType, resource_attribute: :buying_option_reference_type
    end
  end
end
