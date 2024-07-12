# frozen_string_literal: true

module AmazonBusinessApi
  class Seller
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :seller_name, hash_attribute: :sellerName
      attribute :seller_city, hash_attribute: :sellerCity
      attribute :seller_state, hash_attribute: :sellerState
      attribute :seller_postal_code, hash_attribute: :sellerPostalCode
    end
  end
end
