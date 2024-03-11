# frozen_string_literal: true

module LedgerSync
  module AmazonBusinessApi
    class SampleResource
      class Serializer < AmazonBusinessApi::Serializer
        attribute :Id,
                  resource_attribute: :ledger_id
        attribute :Name
        attribute :Email
      end
    end
  end
end
