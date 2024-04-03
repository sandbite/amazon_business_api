# frozen_string_literal: true

module AmazonBusinessApi
  class QuantityLimits < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#offerquantitylimits
    attribute :max_quantity, type: LedgerSync::Type::Integer
    attribute :min_quantity, type: LedgerSync::Type::Integer
  end
end
