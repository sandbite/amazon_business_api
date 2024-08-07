# frozen_string_literal: true

require_relative '../transaction/deserializer'

module AmazonBusinessApi
  class Reconciliation
    class Deserializer < AmazonBusinessApi::Deserializer
      references_many :transactions, deserializer: Transaction::Deserializer, hash_attribute: :transactions
    end
  end
end
