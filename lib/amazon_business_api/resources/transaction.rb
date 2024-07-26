# frozen_string_literal: true

require_relative 'money'
require_relative 'buying_customer'
require_relative 'associated_transaction_detail'
require_relative 'transaction_line_item'

module AmazonBusinessApi
  class Transaction < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1

    attribute :marketplace_id, type: LedgerSync::Type::String
    attribute :transaction_date, type: LedgerSync::Type::String
    attribute :feed_date, type: LedgerSync::Type::String
    attribute :transaction_type, type: LedgerSync::Type::String
    attribute :transaction_id, type: LedgerSync::Type::String
    attribute :ship_tax_rate, type: LedgerSync::Type::String
    attribute :gift_wrap_tax_rate, type: LedgerSync::Type::String
    attribute :legal_entity_name, type: LedgerSync::Type::String
    attribute :purchasing_customer_group_name, type: LedgerSync::Type::String
    references_one :amount, to: Money
    attribute :payment_instrument_type, type: LedgerSync::Type::String
    attribute :payment_instrument_last4_digits, type: LedgerSync::Type::String
    references_one :buyer, to: BuyingCustomer
    references_one :payer, to: BuyingCustomer
    references_many :associated_transaction_details, to: AssociatedTransactionDetail
    references_many :transaction_line_items, to: TransactionLineItem
  end
end
