# frozen_string_literal: true

require_relative '../../common/money/deserializer'
require_relative '../line_item_apportionment_detail/deserializer'
require_relative '../line_item_level_fee_detail/deserializer'

module AmazonBusinessApi
  class TransactionDataItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :tax_rate, hash_attribute: :taxRate
      attribute :unit, hash_attribute: :unit
      attribute :asin, hash_attribute: :asin
      attribute :title, hash_attribute: :title
      references_one :unit_tax_inclusive_price, deserializer: Money::Deserializer, hash_attribute: :unitTaxInclusivePrice
      references_one :unit_tax_exclusive_price, deserializer: Money::Deserializer, hash_attribute: :unitTaxExclusivePrice
      references_one :unit_tax_amount, deserializer: Money::Deserializer, hash_attribute: :unitTaxAmount
      references_one :total_amount, deserializer: Money::Deserializer, hash_attribute: :totalAmount
      references_one :discount, deserializer: Money::Deserializer, hash_attribute: :discount
      references_many :apportionment, deserializer: LineItemApportionmentDetail::Deserializer, hash_attribute: :apportionment
      references_many :fees, deserializer: LineItemLevelFeeDetail::Deserializer, hash_attribute: :fees
    end
  end
end
