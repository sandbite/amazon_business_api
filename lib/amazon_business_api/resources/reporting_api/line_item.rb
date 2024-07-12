# frozen_string_literal: true

require_relative '../common/money'
require_relative 'seller'
require_relative '../../types/array'

module AmazonBusinessApi
  class LineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :product_category, type: LedgerSync::Type::String
    attribute :asin, type: LedgerSync::Type::String
    attribute :title, type: LedgerSync::Type::String
    attribute :unspsc, type: LedgerSync::Type::String
    attribute :product_condition, type: LedgerSync::Type::String
    references_one :listed_price_per_unit, to: Money
    references_one :purchased_price_per_unit, to: Money
    attribute :item_quantity, type: LedgerSync::Type::Integer
    references_one :item_sub_total, to: Money
    references_one :item_shipping_and_handling, to: Money
    references_one :item_promotion, to: Money
    references_one :item_tax, to: Money
    references_one :item_net_total, to: Money
    attribute :purchase_order_line_item, type: LedgerSync::Type::String
    attribute :tax_exemption_applied, type: LedgerSync::Type::Boolean
    attribute :tax_exemption_type, type: LedgerSync::Type::String
    attribute :tax_exempt_opt_out, type: LedgerSync::Type::Boolean
    attribute :discount_program, type: LedgerSync::Type::String
    attribute :discount_type, type: LedgerSync::Type::String
    references_one :discount_amount, to: Money
    attribute :discount_ratio, type: LedgerSync::Type::String
    references_one :seller, to: Seller
    attribute :seller_credentials, type: Type::Array
    attribute :brand_code, type: LedgerSync::Type::String
    attribute :brand_name, type: LedgerSync::Type::String
    attribute :manufacturer_name, type: LedgerSync::Type::String
    attribute :transaction_ids, type: Type::Array
    attribute :carrier_tracking_numbers, type: Type::Array
  end
end
