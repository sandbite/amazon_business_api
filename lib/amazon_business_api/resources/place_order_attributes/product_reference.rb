# frozen_string_literal: true

module AmazonBusinessApi
  class ProductReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :id, type: LedgerSync::Type::String
    attribute :product_reference_type, type: LedgerSync::Type::String
  end
end
