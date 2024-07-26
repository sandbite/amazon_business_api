# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class LineItemApportionmentDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :order_line_item_id, hash_attribute: :orderLineItemId
      attribute :line_number, hash_attribute: :lineNumber
      attribute :units, hash_attribute: :units
      references_one :unit_price, deserializer: Money::Deserializer, hash_attribute: :unitPrice
      references_one :tax_amount, deserializer: Money::Deserializer, hash_attribute: :taxAmount
    end
  end
end
