# frozen_string_literal: true
#
require_relative '../types/array'
require_relative 'editorial_review'
require_relative 'offer'
require_relative 'taxonomy'

module AmazonBusinessApi
  class SearchProductResult < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#productsresult
    attribute :asin, type: LedgerSync::Type::String
    attribute :asinType, type: LedgerSync::Type::String # One of STANDARD, VARIATION_PARENT, VARIATION_CHILD
    attribute :signedProductId, type: LedgerSync::Type::String
    references_many :offers, to: Offer
    attribute :features, type: Types::Array
    references_many :editorialReviews, to: EditorialReview
    references_many :taxonomies, to: Taxonomy
    attribute :title, type: LedgerSync::Type::String
    attribute :url, type: LedgerSync::Type::String
    attribute :format, type: LedgerSync::Type::String
    # attribute :bookInformation, type: LedgerSync::Type::String
    # attribute :byLine, type: LedgerSync::Type::String
    # attribute :mediaInformation, type: LedgerSync::Type::String
    # attribute :productOverview, type: LedgerSync::Type::String
    # attribute :productDetails, type: LedgerSync::Type::String
    # attribute :productVariations, type: LedgerSync::Type::String
    # attribute :customerReviewsSummary, type: LedgerSync::Type::String
    attribute :productDescription, type: LedgerSync::Type::String
    attribute :upcValues, type: Types::Array
    attribute :eanValues, type: Types::Array
  end
end
