# frozen_string_literal: true

require_relative '../product_reference/serializer'
require_relative '../buying_option_reference/serializer'
require_relative '../user_reference/serializer'
require_relative '../group_reference/serializer'
require_relative '../payment_method_reference/serializer'
require_relative '../address/serializer'

module AmazonBusinessApi
  class PlaceOrderAttribute
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :attributeType, resource_attribute: :attribute_type
      attribute :region, resource_attribute: :region
      attribute :purchaseOrderNumber, resource_attribute: :purchase_order_number
      references_one :productReference, resource_attribute: :product_reference, serializer: ProductReference::Serializer
      references_one :buyingOptionReference, resource_attribute: :buying_option_reference, serializer: BuyingOptionReference::Serializer
      references_one :userReference, resource_attribute: :user_reference, serializer: UserReference::Serializer
      references_one :groupReference, resource_attribute: :group_reference, serializer: GroupReference::Serializer
      references_one :paymentMethodReference, resource_attribute: :payment_method_reference, serializer: PaymentMethodReference::Serializer
      references_one :address, resource_attribute: :address, serializer: Address::Serializer
    end
  end
end
