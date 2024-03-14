# frozen_string_literal: true

require_relative 'shipment'
require_relative 'charge'

module AmazonBusinessApi
  class Order < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1

    attribute :orderDate, type: LedgerSync::Type::String # The date when the order was placed.
    attribute :orderId, type: LedgerSync::Type::String # Amazon auto-generated identifier for the order.
    attribute :purchaseOrderNumber, type: LedgerSync::Type::String # The Purchase Order Number assigned to the order.
    attribute :orderQuantity, type: LedgerSync::Type::Integer
    attribute :orderStatus, type: LedgerSync::Type::String # Probably one of: PENDING_APPROVAL PAYMENT_CONFIRMED PENDING_FULFILLMENT PENDING CANCELLED CLOSED
    attribute :lastOrderApproverName, type: LedgerSync::Type::String
    references_one :buyingCustomer, to: BuyingCustomer # The requisitioner or buyer who placed the order.
    attribute :buyerGroupName, type: LedgerSync::Type::String
    attribute :businessOrderInfo, type: LedgerSync::Type::Hash # Additional information provided at checkout.
    references_one :orderSubTotal, to: Money # The principal amount on the order. This only includes the price and excludes shipping, taxes, or discounts.
    references_one :orderShippingAndHandling, to: Money # The total shipping charges on the order. This excludes shipment tax and discounts.
    references_one :orderPromotion, to: Money # The total discount on the order. This includes discounts on items and shipping. We don't show shipping discounts separately for each individual order.
    references_one :orderTax, to: Money # The total taxes for the order.
    references_one :orderNetTotal, to: Money # The total amount charged for the order.
    references_many :lineItems, to: LineItem
    references_many :shipments, to: Shipment
    references_many :charges, to: Charge
  end
end
