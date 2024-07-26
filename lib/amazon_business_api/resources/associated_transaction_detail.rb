# frozen_string_literal: true

module AmazonBusinessApi
  class AssociatedTransactionDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :associated_transaction_id, type: LedgerSync::Type::String
  end
end
