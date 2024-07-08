# frozen_string_literal: true

require_relative 'transaction'

module AmazonBusinessApi
  class Reconciliation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :feed_start_date, type: LedgerSync::Type::String # The date when the order was placed.
    attribute :feed_end_date, type: LedgerSync::Type::String # The date when the order was placed.

    references_many :transactions, to: Transaction
    attribute :next_page_token, type: LedgerSync::Type::String
  end
end
