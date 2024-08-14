# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingCustomer
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :id, hash_attribute: :id
      attribute :name, hash_attribute: :name
      attribute :email, hash_attribute: :email
    end
  end
end
