# frozen_string_literal: true

module AmazonBusinessApi
  class UserReference < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :user_reference_type, type: LedgerSync::Type::String
    attribute :email_address, type: LedgerSync::Type::String
  end
end
