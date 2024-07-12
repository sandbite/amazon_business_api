# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingCustomer
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :id
      attribute :name
      attribute :email
    end
  end
end
