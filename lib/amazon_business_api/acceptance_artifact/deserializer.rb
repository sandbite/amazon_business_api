# frozen_string_literal: true

require_relative '../money/deserializer'
require_relative '../package/deserializer'
require_relative '../package_reference/deserializer'

module AmazonBusinessApi
  class AcceptanceArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :acceptance_artifact_type, hash_attribute: :acceptanceArtifactType

      # Attributes below are all possible attributes of an AcceptanceArtifact
      attribute :identifier, hash_attribute: :identifier
      attribute :lower_boundary, hash_attribute: :lowerBoundary
      attribute :upper_boundary, hash_attribute: :upperBoundary
      references_one :amount, deserializer: Money::Deserializer, hash_attribute: :amount
      attribute :category, hash_attribute: :category
      attribute :type, hash_attribute: :type
      # references_many :packages, deserializer: Package::Deserializer,
      #                 hash_attribute: :packages
      # references_many :package_references, deserializer: PackageReference::Deserializer,
      #                 hash_attribute: :package_references
      attribute :quantity, hash_attribute: :quantity
    end
  end
end
