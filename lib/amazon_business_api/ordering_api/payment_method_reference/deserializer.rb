# frozen_string_literal: true

module AmazonBusinessApi
  class PaymentMethodReference
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :payment_method_reference_type, hash_attribute: :paymentMethodReference
    end
  end
end
