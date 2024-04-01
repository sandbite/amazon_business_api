# frozen_string_literal: true

require_relative 'merchant'
require_relative 'price'
require_relative 'shipping_option'
require_relative 'condition'
require_relative 'quantity_limits'
require_relative 'quantity_price_tier'

module AmazonBusinessApi
  class Offer < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#offer
    attribute :availability, type: LedgerSync::Type::String
    attribute :buyingGuidance, type: LedgerSync::Type::String # enum: PREFERRED NEGOTIATED RESTRICTED BLOCKED NONE UNKNOWN
    attribute :fulfillmentType, type: LedgerSync::Type::String # enum: AMAZON_FULFILLMENT MERCHANT_FULFILLMENT OTHER
    attribute :offerId, type: LedgerSync::Type::String
    attribute :productCondition, type: LedgerSync::Type::String
    attribute :productConditionNote, type: LedgerSync::Type::String
    attribute :deliveryInformation, type: LedgerSync::Type::String
    references_one :merchant, to: Merchant
    references_one :price, to: Price
    references_one :listPrice, to: Price
    references_many :shippingOptions, to: ShippingOption
    references_one :condition, to: Condition
    references_one :quantityLimits, to: QuantityLimits
    references_many :quantityPriceTiers, to: QuantityPriceTier
    # references_one :taxExclusivePrice, to: TaxExclusivePrice NOTE: Docs Missing
    # references_many :badges, to: Badge
    # references_many :buyingRestrictions, to: BuyingRestriction
  end
end
