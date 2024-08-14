# frozen_string_literal: true

module AmazonBusinessApi
  class Money < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :currency_code, type: LedgerSync::Type::String
    attribute :amount, type: LedgerSync::Type::String
  end
end
