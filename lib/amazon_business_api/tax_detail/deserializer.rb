# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class TaxDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :rate, hash_attribute: :rate
      references_one :inclusive_total, deserializer: Money::Deserializer, hash_attribute: :inclusiveTotal
      references_one :exclusive_total, deserializer: Money::Deserializer, hash_attribute: :exclusiveTotal
      references_one :amount, deserializer: Money::Deserializer, hash_attribute: :amount
    end
  end
end
