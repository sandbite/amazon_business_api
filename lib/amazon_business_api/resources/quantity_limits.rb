# frozen_string_literal: true

module AmazonBusinessApi
  class QuantityLimits < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/product-search-api-v1-reference#offerquantitylimits
    attribute :maxQuantity, type: LedgerSync::Type::Integer
    attribute :minQuantity, type: LedgerSync::Type::Integer
  end
end
