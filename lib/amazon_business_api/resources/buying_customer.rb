# frozen_string_literal: true

module AmazonBusinessApi
  class BuyingCustomer < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :id, type: LedgerSync::Type::String
    attribute :name, type: LedgerSync::Type::String
    attribute :email, type: LedgerSync::Type::String
  end
end
