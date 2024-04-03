# frozen_string_literal: true

module AmazonBusinessApi
  class Merchant < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#merchant
    attribute :merchant_id, type: LedgerSync::Type::String
    attribute :name, type: LedgerSync::Type::String
    attribute :mean_feedback_rating, type: LedgerSync::Type::Float
    attribute :total_feedback_count, type: LedgerSync::Type::Integer
  end
end
