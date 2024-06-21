# frozen_string_literal: true

require_relative 'attributes/product_reference'
require_relative 'attributes/buying_option_reference'

module AmazonBusinessApi
  class Attribute < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :attribute_type, type: LedgerSync::Type::String
    references_one :product_reference, to: ProductReference
    references_one :buying_option_reference, to: BuyingOptionReference
  end
end
