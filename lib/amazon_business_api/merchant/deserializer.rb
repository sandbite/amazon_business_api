# frozen_string_literal: true

module AmazonBusinessApi
  class Merchant
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :merchant_id, hash_attribute: :merchantId
      attribute :name
      attribute :mean_feedback_rating, hash_attribute: :meanFeedbackRating
      attribute :total_feedback_count, hash_attribute: :totalFeedbackCount
    end
  end
end
