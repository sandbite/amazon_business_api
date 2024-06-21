# frozen_string_literal: true

module AmazonBusinessApi
  class Expectation < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :expectation_type, type: LedgerSync::Type::String

    # TODO: What about other nested attributes here?
  end
end
