# frozen_string_literal: true

require_relative '../../buying_customer/deserializer'
require_relative '../../common/money/deserializer'
require_relative '../../line_item/deserializer'
require_relative '../../shipment/deserializer'
require_relative '../../charge/deserializer'

module AmazonBusinessApi
  class Order
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :order_date, hash_attribute: :orderDate
      attribute :order_id, hash_attribute: :orderId
      attribute :purchase_order_number, hash_attribute: :purchaseOrderNumber
      attribute :order_quantity, hash_attribute: :orderQuantity
      attribute :order_status, hash_attribute: :orderStatus
      attribute :last_order_approver_name, hash_attribute: :lastOrderApproverName
      references_one :buying_customer, deserializer: BuyingCustomer::Deserializer, hash_attribute: :buyingCustomer
      attribute :buyer_group_name, hash_attribute: :buyerGroupName
      attribute :business_order_info, hash_attribute: :businessOrderInfo
      references_one :order_sub_total, deserializer: Money::Deserializer, hash_attribute: :orderSubTotal
      references_one :order_shipping_and_handling, deserializer: Money::Deserializer, hash_attribute: :orderShippingAndHandling
      references_one :order_promotion, deserializer: Money::Deserializer, hash_attribute: :orderPromotion
      references_one :order_tax, deserializer: Money::Deserializer, hash_attribute: :orderTax
      references_one :order_net_total, deserializer: Money::Deserializer, hash_attribute: :orderNetTotal
      references_many :line_items, deserializer: LineItem::Deserializer, hash_attribute: :lineItems
      references_many :shipments, deserializer: Shipment::Deserializer
      references_many :charges, deserializer: Charge::Deserializer
    end
  end
end
