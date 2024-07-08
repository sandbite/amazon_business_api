# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class InvoiceLevelFeeApportionmentDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      references_one :tax_exclusive_fee, deserializer:  TaxDetail::Deserializer, hash_attribute: :taxExclusiveFee
      references_one :tax_amount, deserializer: Money::Deserializer, hash_attribute: :taxAmount
    end
  end
end
