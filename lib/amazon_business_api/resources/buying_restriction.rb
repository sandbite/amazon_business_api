# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingRestriction < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#buyingrestriction
    attribute :title, type: LedgerSync::Type::String
    attribute :type, type: LedgerSync::Type::String
  end
end
