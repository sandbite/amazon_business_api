# frozen_string_literal: true

module AmazonBusinessApi
  class Merchant < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#merchant
    attribute :merchantId, type: LedgerSync::Type::String
    attribute :name, type: LedgerSync::Type::String
    attribute :meanFeedbackRating, type: LedgerSync::Type::Float
    attribute :totalFeedbackCount, type: LedgerSync::Type::Integer
  end
end
