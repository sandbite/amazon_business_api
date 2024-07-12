# frozen_string_literal: true

require_relative '../rejection_artifact/deserializer'

module AmazonBusinessApi
  class RejectedItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :quantity, hash_attribute: :quantity
      references_many :artifacts, deserializer: RejectionArtifact::Deserializer, hash_attribute: :artifacts
    end
  end
end
