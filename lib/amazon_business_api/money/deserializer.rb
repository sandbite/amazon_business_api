# frozen_string_literal: true

module AmazonBusinessApi
  class Money
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :currency_code, hash_attribute: :currencyCode
      attribute :amount
    end
  end
end
