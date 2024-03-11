# frozen_string_literal: true

module LedgerSync
  module AmazonBusinessApi
    class SampleResource < AmazonBusinessApi::Resource
      attribute :Name, type: Type::String
      attribute :Email, type: Type::String
    end
  end
end
