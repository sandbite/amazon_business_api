# frozen_string_literal: true

module AmazonBusinessApi
  class ResultPlaceOrder
    class Deserializer < AmazonBusinessApi::Deserializer
      references_many :line_items, deserializer: ResultLineItem::Deserializer, hash_attribute: :lineItems
      references_many :acceptance_artifacts, deserializer: AcceptanceArtifact::Deserializer, hash_attribute: :acceptanceArtifacts
      references_many :rejection_artifacts, deserializer: RejectionArtifact::Deserializer, hash_attribute: :rejectionArtifacts
    end
  end
end
