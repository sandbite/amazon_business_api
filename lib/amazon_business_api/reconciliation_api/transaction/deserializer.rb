# frozen_string_literal: true

require_relative '../../common/money/deserializer'
require_relative '../../common/buying_customer/deserializer'
require_relative '../associated_transaction_detail/deserializer'
require_relative '../transaction_line_item/deserializer'

module AmazonBusinessApi
  class Transaction
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :marketplace_id, hash_attribute: :marketplaceId
      attribute :transaction_date, hash_attribute: :transactionDate
      attribute :feed_date, hash_attribute: :feedDate
      attribute :transaction_type, hash_attribute: :transactionType
      attribute :transaction_id, hash_attribute: :transactionId
      attribute :ship_tax_rate, hash_attribute: :shipTaxRate
      attribute :gift_wrap_tax_rate, hash_attribute: :giftWrapTaxRate
      attribute :legal_entity_name, hash_attribute: :legalEntityName
      attribute :purchasing_customer_group_name, hash_attribute: :purchasingCustomerGroupName
      references_one :amount, deserializer: Money::Deserializer, hash_attribute: :amount
      attribute :payment_instrument_type, hash_attribute: :paymentInstrumentType
      attribute :payment_instrument_last4_digits, hash_attribute: :paymentInstrumentLast4Digits
      references_one :buyer, deserializer: BuyingCustomer::Deserializer, hash_attribute: :buyer
      references_one :payer, deserializer: BuyingCustomer::Deserializer, hash_attribute: :payer
      references_many :associated_transaction_details, deserializer: AssociatedTransactionDetail::Deserializer, hash_attribute: :associatedTransactionDetails
      references_many :transaction_line_items, deserializer: TransactionLineItem::Deserializer, hash_attribute: :transactionLineItems
    end
  end
end
