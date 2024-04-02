# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class Charge
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :transaction_date, hash_attribute: :transactionDate
      attribute :transaction_id, hash_attribute: :transactionId
      references_one :amount, deserializer: Money::Deserializer
      attribute :payment_instrument_type, hash_attribute: :paymentInstrumentType
      attribute :payment_instrument_last4_digits, hash_attribute: :paymentInstrumentLast4Digits
    end
  end
end
