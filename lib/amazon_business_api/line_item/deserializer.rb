# frozen_string_literal: true

require_relative '../common/money/deserializer'
require_relative '../seller/deserializer'

module AmazonBusinessApi
  class LineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :product_category, hash_attribute: :productCategory
      attribute :asin
      attribute :title
      attribute :unspsc
      attribute :product_condition, hash_attribute: :productCondition
      references_one :listed_price_per_unit, deserializer: Money::Deserializer, hash_attribute: :listedPricePerUnit
      references_one :purchased_price_per_unit, deserializer: Money::Deserializer, hash_attribute: :purchasedPricePerUnit
      attribute :item_quantity, hash_attribute: :itemQuantity
      references_one :item_sub_total, deserializer: Money::Deserializer, hash_attribute: :itemSubTotal
      references_one :item_shipping_and_handling, deserializer: Money::Deserializer, hash_attribute: :itemShippingAndHandling
      references_one :item_promotion, deserializer: Money::Deserializer, hash_attribute: :itemPromotion
      references_one :item_tax, deserializer: Money::Deserializer, hash_attribute: :itemTax
      references_one :item_net_total, deserializer: Money::Deserializer, hash_attribute: :itemNetTotal
      attribute :purchase_order_line_item, hash_attribute: :purchaseOrderLineItem
      attribute :tax_exemption_applied, hash_attribute: :taxExemptionApplied
      attribute :tax_exemption_type, hash_attribute: :taxExemptionType
      attribute :tax_exempt_opt_out, hash_attribute: :taxExemptOptOut
      attribute :discount_program, hash_attribute: :discountProgram
      attribute :discount_type, hash_attribute: :discountType
      references_one :discount_amount, deserializer: Money::Deserializer, hash_attribute: :discountAmount
      attribute :discount_ratio, hash_attribute: :discountRatio
      references_one :seller, deserializer: Seller::Deserializer
      attribute :seller_credentials, hash_attribute: :sellerCredentials
      attribute :brand_code, hash_attribute: :brandCode
      attribute :brand_name, hash_attribute: :brandName
      attribute :manufacturer_name, hash_attribute: :manufacturerName
      attribute :transaction_ids, hash_attribute: :transactionIds
      attribute :carrier_tracking_numbers, hash_attribute: :carrierTrackingNumbers
    end
  end
end
