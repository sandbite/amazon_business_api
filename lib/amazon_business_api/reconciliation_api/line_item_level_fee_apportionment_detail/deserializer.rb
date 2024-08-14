# frozen_string_literal: true

require_relative '../../common/money/deserializer'

module AmazonBusinessApi
  class LineItemLevelFeeApportionmentDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :associated_order_line_item_id, hash_attribute: :associatedOrderLineItemId
      attribute :units, hash_attribute: :units
      references_one :unit_tax_exclusive_fee, deserializer: Money::Deserializer, hash_attribute: :unitTaxExclusiveFee
      references_one :unit_tax_amount, deserializer: Money::Deserializer, hash_attribute: :unitTaxAmount
    end
  end
end
