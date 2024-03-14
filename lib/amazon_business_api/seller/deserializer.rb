# frozen_string_literal: true

module AmazonBusinessApi
  class Seller
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :sellerName
      attribute :sellerCity
      attribute :sellerState
      attribute :sellerPostalCode
    end
  end
end
