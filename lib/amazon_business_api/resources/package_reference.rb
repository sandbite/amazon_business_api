# frozen_string_literal: true

module AmazonBusinessApi
  class PackageReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :package_reference_type, type: LedgerSync::Type::String
  end
end
