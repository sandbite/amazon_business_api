# frozen_string_literal: true

require_relative '../amount/serializer'

module AmazonBusinessApi
  class PlaceOrderExpectation
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :expectationType, resource_attribute: :expectation_type
      attribute :source, resource_attribute: :source
      references_one :amount, resource_attribute: :amount, serializer: Amount::Serializer
    end
  end
end
