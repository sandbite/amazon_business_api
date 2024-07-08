# frozen_string_literal: true

module AmazonBusinessApi
  class AssociatedTransactionDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :associated_transaction_id, type: LedgerSync::Type::String
  end
end
