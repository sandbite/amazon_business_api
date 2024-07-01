# frozen_string_literal: true

module AmazonBusinessApi
  class PaymentMethodReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :paymentMethodReference, resource_attribute: :payment_method_reference_type
    end
  end
end
