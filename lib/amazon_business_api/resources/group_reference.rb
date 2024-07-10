# frozen_string_literal: true

module AmazonBusinessApi
  class GroupReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :group_reference_type, type: LedgerSync::Type::String
    attribute :identifier, type: LedgerSync::Type::String
  end
end
