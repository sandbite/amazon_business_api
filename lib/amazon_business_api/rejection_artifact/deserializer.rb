# frozen_string_literal: true

module AmazonBusinessApi
  class RejectionArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :rejection_artifact_type, hash_attribute: :rejectionArtifactType
      # attribute :lower_bounday, hash_attribute: :lowerBoundary
      # attribute :upper_boundary, hash_attribute: :upperBoundary
      # references_one :amount, deserializer: Money::Deserializer, hash_attribute: :amount
      # attribute :category, hash_attribute: :category
      # attribute :type, hash_attribute: :type
      # attribute :identifier, hash_attribute: :identifier
    end
  end
end
