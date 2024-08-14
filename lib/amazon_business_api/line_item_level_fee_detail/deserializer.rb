# frozen_string_literal: true

require_relative '../tax_detail/deserializer'
require_relative '../money/deserializer'
require_relative '../line_item_level_fee_apportionment_detail/deserializer'

module AmazonBusinessApi
  class LineItemLevelFeeDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :fee_type, hash_attribute: :feeType
      references_one :tax, deserializer:  TaxDetail::Deserializer, hash_attribute: :tax
      references_one :discount, deserializer: Money::Deserializer, hash_attribute: :discount
      references_many :apportionment, deserializer: LineItemLevelFeeApportionmentDetail::Deserializer, hash_attribute: :apportionment
    end
  end
end
