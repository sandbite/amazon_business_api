# frozen_string_literal: true

module AmazonBusinessApi
  class PaymentMethodReference
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :paymentMethodReferenceType, resource_attribute: :payment_method_reference_type
    end
  end
end
