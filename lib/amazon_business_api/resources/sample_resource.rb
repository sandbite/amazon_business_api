# frozen_string_literal: true

module AmazonBusinessApi
  class SampleResource < AmazonBusinessApi::Resource
    attribute :Name, type: LedgerSync::Type::String
    attribute :Email, type: LedgerSync::Type::String
  end
end
