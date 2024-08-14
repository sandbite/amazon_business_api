# frozen_string_literal: true

module AmazonBusinessApi
  class Money
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :currency_code, hash_attribute: :currencyCode
      attribute :amount do |response|
        # Reporting API returns string and Ordering API returns float
        response.dig(:hash, 'amount').try(:to_s)
      end
    end
  end
end
