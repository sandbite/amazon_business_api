# frozen_string_literal: true

require_relative '../product_reference/serializer'
require_relative '../buying_option_reference/serializer'

module AmazonBusinessApi
  class PlaceOrderAttribute
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :attributeType, resource_attribute: :attribute_type
      attribute :productReference, serializer: ProductReference::Serializer, resource_attribute: :product_reference
      attribute :buyingOptionReference, serializer: BuyingOptionReference::Serializer, resource_attribute: :buying_option_reference
      attribute :region, resource_attribute: :region
      attribute :purchaseOrderNumber, resource_attribute: :purchase_order_number
      attribute :userReference, resource_attribute: :user_reference
      attribute :groupReference, resource_attribute: :group_reference
      attribute :paymentMethodReference, resource_attribute: :payment_method_reference
      attribute :address, resource_attribute: :address
    end
  end
end
