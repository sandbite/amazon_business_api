# frozen_string_literal: true

require_relative '../buying_customer/deserializer'
require_relative '../money/deserializer'

module AmazonBusinessApi
  class Order
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :orderDate
      attribute :orderId
      attribute :purchaseOrderNumber
      attribute :orderQuantity
      attribute :orderStatus
      attribute :lastOrderApproverName
      references_one :buyingCustomer, deserializer: BuyingCustomer::Deserializer
      attribute :buyerGroupName
      attribute :businessOrderInfo
      references_one :orderSubTotal, deserializer: Money::Deserializer
      references_one :orderShippingAndHandling, deserializer: Money::Deserializer
      references_one :orderPromotion, deserializer: Money::Deserializer
      references_one :orderTax, deserializer: Money::Deserializer
      references_one :orderNetTotal, deserializer: Money::Deserializer
    end
  end
end
