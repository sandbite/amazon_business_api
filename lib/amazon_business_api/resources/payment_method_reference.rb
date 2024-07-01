# frozen_string_literal: true

module AmazonBusinessApi
  class PaymentMethodReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :payment_method_reference_type, type: LedgerSync::Type::String
  end
end
