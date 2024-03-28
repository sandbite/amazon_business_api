# frozen_string_literal: true

module AmazonBusinessApi
  class Offer
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :availability
      attribute :buyingGuidance
      attribute :fulfillmentType
      attribute :offerId
      attribute :productCondition
      attribute :productConditionNote
      attribute :deliveryInformation
      references_one :merchant, deserializer: Merchant::Deserializer
      references_one :price, deserializer: Price::Deserializer
      references_one :listPrice, deserializer: Price::Deserializer
      references_many :shippingOptions, deserializer: ShippingOption::Deserializer
      references_one :condition, deserializer: Condition::Deserializer
      references_one :quantityLimits, deserializer: OfferQuantityLimits::Deserializer
      references_one :quantityPrice, deserializer: QuantityPrice::Deserializer
      references_one :taxExclusivePrice, deserializer: TaxExclusivePrice::Deserializer
      references_many :badges, deserializer: Badge::Deserializer
      references_many :buyingRestrictions, deserializer: BuyingRestriction::Deserializer
    end
  end
end
