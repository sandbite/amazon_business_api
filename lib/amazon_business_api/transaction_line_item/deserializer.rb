# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class TransactionLineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :refund_reason, hash_attribute: :refundReason
      references_one :total_amount, deserializer: Money::Deserializer, hash_attribute: :totalAmount
      references_one :principal_amount, deserializer: Money::Deserializer, hash_attribute: :principalAmount
      references_one :shipping_charge, deserializer: Money::Deserializer, hash_attribute: :shippingCharge
      references_one :regulatory_fee, deserializer: Money::Deserializer, hash_attribute: :regulatoryFee
      references_one :gift_wrapping_charge, deserializer: Money::Deserializer, hash_attribute: :giftWrappingCharge
      references_one :discount, deserializer: Money::Deserializer, hash_attribute: :discount
      references_one :tax, deserializer: Money::Deserializer, hash_attribute: :tax
      references_one :unit_price, deserializer: Money::Deserializer, hash_attribute: :unitPrice
      attribute :tax_rate, hash_attribute: :taxRate
      attribute :order_id, hash_attribute: :orderId
      attribute :unspsc, hash_attribute: :unspsc
      attribute :order_line_item_id, hash_attribute: :orderLineItemId
      attribute :purchase_order_number, hash_attribute: :purchaseOrderNumber
      attribute :purchase_order_line_item_id, hash_attribute: :purchaseOrderLineItemId
      attribute :asin, hash_attribute: :asin
      attribute :product_title, hash_attribute: :productTitle
      attribute :item_quantity, hash_attribute: :itemQuantity
      attribute :shipment_id, hash_attribute: :shipmentId
      attribute :shipment_date, hash_attribute: :shipmentDate
      attribute :merchant_legal_name, hash_attribute: :merchantLegalName
      attribute :budget_id, hash_attribute: :budgetId
      # attribute :business_order_info, hash_attribute: :businessOrderInfo
    end
  end
end
