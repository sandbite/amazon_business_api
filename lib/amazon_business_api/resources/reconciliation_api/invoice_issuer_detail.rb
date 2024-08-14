# frozen_string_literal: true

module AmazonBusinessApi
  class InvoiceIssuerDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :name, type: LedgerSync::Type::String
    attribute :registration_number, type: LedgerSync::Type::String
  end
end
