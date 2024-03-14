# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class Charge
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :transactionDate
      attribute :transactionId
      references_one :amount, deserializer: Money::Deserializer
      attribute :paymentInstrumentType
      attribute :paymentInstrumentLast4Digits
    end
  end
end
