# frozen_string_literal: true

require_relative 'transaction'

module AmazonBusinessApi
  class Reconciliation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :feed_start_date, type: LedgerSync::Type::String # The date when the order was placed.
    attribute :feed_end_date, type: LedgerSync::Type::String # The date when the order was placed.

    references_many :transactions, to: Transaction
    attribute :next_page_token, type: LedgerSync::Type::String
  end
end
