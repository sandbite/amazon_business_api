# frozen_string_literal: true

module AmazonBusinessApi
  class AssociatedTransactionDetail
    class Serializer < AmazonBusinessApi::Serializer
      attribute :associatedTransactionId, resource_attribute: :associated_transaction_id
    end
  end
end
