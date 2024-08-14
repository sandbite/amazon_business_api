# frozen_string_literal: true

module AmazonBusinessApi
  class PaymentMethodReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :payment_method_reference_type, type: LedgerSync::Type::String
  end
end
