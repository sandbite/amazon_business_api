# frozen_string_literal: true

require_relative '../money/deserializer'
require_relative '../seller/deserializer'

module AmazonBusinessApi
  class LineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :productCategory
      attribute :asin
      attribute :title
      attribute :unspsc
      attribute :productCondition
      references_one :listedPricePerUnit, deserializer: Money::Deserializer
      references_one :purchasedPricePerUnit, deserializer: Money::Deserializer
      attribute :itemQuantity
      references_one :itemSubTotal, deserializer: Money::Deserializer
      references_one :itemShippingAndHandling, deserializer: Money::Deserializer
      references_one :itemPromotion, deserializer: Money::Deserializer
      references_one :itemTax, deserializer: Money::Deserializer
      references_one :itemNetTotal, deserializer: Money::Deserializer
      attribute :purchaseOrderLineItem
      attribute :taxExemptionApplied
      attribute :taxExemptionType
      attribute :taxExemptOptOut
      attribute :discountProgram
      attribute :discountType
      references_one :discountAmount, deserializer: Money::Deserializer
      attribute :discountRatio
      references_one :seller, deserializer: Seller::Deserializer
      attribute :sellerCredentials
      attribute :brandCode
      attribute :brandName
      attribute :manufacturerName
      attribute :transactionIds
      attribute :carrierTrackingNumbers
    end
  end
end