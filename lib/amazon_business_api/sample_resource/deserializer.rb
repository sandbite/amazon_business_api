# frozen_string_literal: true

module AmazonBusinessApi
  class SampleResource
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :ledger_id,
                hash_attribute: 'Id'
      attribute :Name
      attribute :Email
    end
  end
end
