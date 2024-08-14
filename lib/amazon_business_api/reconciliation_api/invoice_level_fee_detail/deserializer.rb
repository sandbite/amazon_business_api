# frozen_string_literal: true

require_relative '../tax_detail/deserializer'
require_relative '../../common/money/deserializer'
require_relative '../invoice_level_fee_apportionment_detail/deserializer'

module AmazonBusinessApi
  class InvoiceLevelFeeDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :fee_type, hash_attribute: :feeType
      references_one :tax, deserializer:  TaxDetail::Deserializer, hash_attribute: :tax
      references_one :discount, deserializer: Money::Deserializer, hash_attribute: :discount
      references_many :apportionment, deserializer: InvoiceLevelFeeApportionmentDetail::Deserializer, hash_attribute: :apportionment
    end
  end
end
