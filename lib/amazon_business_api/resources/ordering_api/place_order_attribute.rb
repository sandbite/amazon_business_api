# frozen_string_literal: true

require_relative 'place_order_attributes/product_reference'
require_relative 'place_order_attributes/buying_option_reference'
require_relative 'user_reference'
require_relative 'group_reference'
require_relative 'payment_method_reference'
require_relative 'address'

module AmazonBusinessApi
  class PlaceOrderAttribute < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :attribute_type, type: LedgerSync::Type::String
    references_one :product_reference, to: ProductReference
    references_one :buying_option_reference, to: BuyingOptionReference
    attribute :region, type: LedgerSync::Type::String
    attribute :purchase_order_number, type: LedgerSync::Type::String
    references_one :user_reference, to: UserReference
    references_one :group_reference, to: GroupReference
    references_one :payment_method_reference, to: PaymentMethodReference
    references_one :address, to: Address
  end
end
