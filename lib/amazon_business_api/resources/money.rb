# frozen_string_literal: true

module AmazonBusinessApi
  class Money < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :currencyCode, type: LedgerSync::Type::String
    attribute :amount, type: LedgerSync::Type::String
  end
end
