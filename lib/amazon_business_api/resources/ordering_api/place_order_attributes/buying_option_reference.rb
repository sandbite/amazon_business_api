# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingOptionReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :id, type: LedgerSync::Type::String
    attribute :buying_option_reference_type, type: LedgerSync::Type::String
  end
end
