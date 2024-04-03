# frozen_string_literal: true

module AmazonBusinessApi
  class EditorialReview
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :content
      attribute :source
    end
  end
end
