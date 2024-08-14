# frozen_string_literal: true

module AmazonBusinessApi
  class Amount < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :currency_code, type: LedgerSync::Type::String
    attribute :amount, type: LedgerSync::Type::Integer
  end
end
