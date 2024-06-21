# frozen_string_literal: true

module AmazonBusinessApi
  class RequestLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :external_id, type: LedgerSync::Type::String
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :attributes, to: Attribute
    references_many :expectations, to: Expectation

    # WIP: references_one :discount_amount, to: Money
  end
end
