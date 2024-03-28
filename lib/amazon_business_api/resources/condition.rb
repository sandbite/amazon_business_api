# frozen_string_literal: true

module AmazonBusinessApi
  class Condition < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#condition
    attribute :conditionValue, type: LedgerSync::Type::String # enum: NEW, USED, COLLECTIBLE, REFURBISHED, OTHER, UNKNOWN
    attribute :conditionNote, type: LedgerSync::Type::String
    attribute :subCondition, type: LedgerSync::Type::String # enum: ACCEPTABLE, CLUB, GOOD, LIKE_NEW, NEW, OEM, OPEN_BOX, REFURBISHED, UNKNOWN, VERY_GOOD
  end
end
