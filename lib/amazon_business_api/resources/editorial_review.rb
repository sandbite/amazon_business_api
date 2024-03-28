# frozen_string_literal: true

module AmazonBusinessApi
  class EditorialReview < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#editorialreview
    attribute :content, type: LedgerSync::Type::String
    attribute :source, type: LedgerSync::Type::String
  end
end
