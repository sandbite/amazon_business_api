# frozen_string_literal: true

require_relative 'money'
require_relative 'delivery_range'

module AmazonBusinessApi
  class ShippingOption < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#shippingoption
    references_one :shippingCost, to: Money
    references_one :deliveryRange, to: DeliveryRange
  end
end
