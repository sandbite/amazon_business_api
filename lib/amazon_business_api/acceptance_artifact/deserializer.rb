# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class AcceptanceArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :acceptance_artifact_type, hash_attribute: :acceptanceArtifactType
      attribute :lower_bounday, hash_attribute: :lowerBoundary
      attribute :upper_boundary, hash_attribute: :upperBoundary
      references_one :amount, deserializer: Money::Deserializer, hash_attribute: :amount
      attribute :category, hash_attribute: :category
      attribute :type, hash_attribute: :type
      attribute :identifier, hash_attribute: :identifier
    end
  end
end
