# frozen_string_literal: true

module AmazonBusinessApi
  class Amount
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :currencyCode, resource_attribute: :currency_code
      attribute :amount, resource_attribute: :amount
    end
  end
end
