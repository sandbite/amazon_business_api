# frozen_string_literal: true

module AmazonBusinessApi
  class PackageAttribute < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :package_attribute_type, type: LedgerSync::Type::String
  end
end
