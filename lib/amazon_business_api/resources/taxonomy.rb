# frozen_string_literal: true

module AmazonBusinessApi
  class Taxonomy < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#taxonomy
    attribute :taxonomyCode, type: LedgerSync::Type::String
    attribute :title, type: LedgerSync::Type::String
    attribute :type, type: LedgerSync::Type::String # enum: UNSPSC, ECLASS
  end
end
