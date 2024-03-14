# frozen_string_literal: true

require_relative 'money'
require_relative 'seller'
require_relative '../types/array'

module AmazonBusinessApi
  class LineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :productCategory, type: LedgerSync::Type::String
    attribute :asin, type: LedgerSync::Type::String
    attribute :title, type: LedgerSync::Type::String
    attribute :unspsc, type: LedgerSync::Type::String
    attribute :productCondition, type: LedgerSync::Type::String
    references_one :listedPricePerUnit, to: Money
    references_one :purchasedPricePerUnit, to: Money
    attribute :itemQuantity, type: LedgerSync::Type::Integer
    references_one :itemSubTotal, to: Money
    references_one :itemShippingAndHandling, to: Money
    references_one :itemPromotion, to: Money
    references_one :itemTax, to: Money
    references_one :itemNetTotal, to: Money
    attribute :purchaseOrderLineItem, type: LedgerSync::Type::String
    attribute :taxExemptionApplied, type: LedgerSync::Type::Boolean
    attribute :taxExemptionType, type: LedgerSync::Type::String
    attribute :taxExemptOptOut, type: LedgerSync::Type::Boolean
    attribute :discountProgram, type: LedgerSync::Type::String
    attribute :discountType, type: LedgerSync::Type::String
    references_one :discountAmount, to: Money
    attribute :discountRatio, type: LedgerSync::Type::String
    references_one :seller, to: Seller
    attribute :sellerCredentials, type: Type::Array
    attribute :brandCode, type: LedgerSync::Type::String
    attribute :brandName, type: LedgerSync::Type::String
    attribute :manufacturerName, type: LedgerSync::Type::String
    attribute :transactionIds, type: Type::Array
    attribute :carrierTrackingNumbers, type: Type::Array
  end
end
