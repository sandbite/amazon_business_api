# frozen_string_literal: true

module AmazonBusinessApi
  class Money
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :currencyCode
      attribute :amount
    end
  end
end
