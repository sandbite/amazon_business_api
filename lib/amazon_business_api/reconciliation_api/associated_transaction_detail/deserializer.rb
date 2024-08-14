# frozen_string_literal: true

module AmazonBusinessApi
  class AssociatedTransactionDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :associated_transaction_id, hash_attribute: :associatedTransactionId
    end
  end
end
