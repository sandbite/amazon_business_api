# frozen_string_literal: true

module AmazonBusinessApi
  class Money
    class Serializer < AmazonBusinessApi::Serializer
      attribute :currencyCode, resource_attribute: :currency_code
      attribute :amount, resource_attribute: :amount
    end
  end
end
