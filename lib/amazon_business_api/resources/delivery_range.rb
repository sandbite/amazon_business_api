# frozen_string_literal: true

module AmazonBusinessApi
  class DeliveryRange < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#deliverydaterange
    attribute :max, type: LedgerSync::Type::String
    attribute :min, type: LedgerSync::Type::String
  end
end
