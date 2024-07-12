# frozen_string_literal: true

module AmazonBusinessApi
  class Amount < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :currency_code, type: LedgerSync::Type::String
    attribute :amount, type: LedgerSync::Type::Integer
  end
end
