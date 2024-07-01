# frozen_string_literal: true

module AmazonBusinessApi
  class Amount
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :currency_code, hash_attribute: :currencyCode
      attribute :amount, hash_attribute: :amount
    end
  end
end
