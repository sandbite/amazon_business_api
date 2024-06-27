# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
    end
  end
end
