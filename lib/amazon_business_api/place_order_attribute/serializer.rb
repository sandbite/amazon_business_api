# frozen_string_literal: true

require_relative '../product_reference/serializer'
require_relative '../buying_option_reference/serializer'

module AmazonBusinessApi
  class PlaceOrderAttribute
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :attributeType, resource_attribute: :attribute_type
      attribute :region, resource_attribute: :region
      attribute :purchaseOrderNumber, resource_attribute: :purchase_order_number

      def serialize(resource:)
        hash = super
        hash[:productReference] = ProductReference::Serializer.new.serialize(resource: resource.product_reference) if resource.product_reference
        hash[:buyingOptionReference] = BuyingOptionReference::Serializer.new.serialize(resource: resource.buying_option_reference) if resource.buying_option_reference
        hash[:userReference] = UserReference::Serializer.new.serialize(resource: resource.user_reference) if resource.user_reference
        hash[:groupReference] = GroupReference::Serializer.new.serialize(resource: resource.group_reference) if resource.group_reference
        hash[:paymentMethodReference] = PaymentMethodReference::Serializer.new.serialize(resource: resource.payment_method_reference) if resource.payment_method_reference
        hash[:address] = Address::Serializer.new.serialize(resource: resource.address) if resource.address
        hash
      end
    end
  end
end
