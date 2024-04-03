# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingRestriction
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :title
      attribute :type
    end
  end
end
