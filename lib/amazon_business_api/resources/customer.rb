# frozen_string_literal: true

module AmazonBusinessApi
  class Customer < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :id, type: LedgerSync::Type::String
    attribute :name, type: LedgerSync::Type::String
    attribute :email, type: LedgerSync::Type::String
  end
end
