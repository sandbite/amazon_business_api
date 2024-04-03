# frozen_string_literal: true

module AmazonBusinessApi
  class Condition < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#condition
    attribute :condition_value, type: LedgerSync::Type::String # enum: NEW, USED, COLLECTIBLE, REFURBISHED, OTHER, UNKNOWN
    attribute :condition_note, type: LedgerSync::Type::String
    attribute :sub_condition, type: LedgerSync::Type::String # enum: ACCEPTABLE, CLUB, GOOD, LIKE_NEW, NEW, OEM, OPEN_BOX, REFURBISHED, UNKNOWN, VERY_GOOD
  end
end
