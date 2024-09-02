# frozen_string_literal: true

require_relative '../money/deserializer'

module AmazonBusinessApi
  class RejectionArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :rejection_artifact_type, hash_attribute: :rejectionArtifactType

      # Attributes below are all possible attributes of a RejectionArtifact
      attribute :quantity, hash_attribute: :quantity
      attribute :message, hash_attribute: :message
      attribute :code, hash_attribute: :code
      attribute :minimum_age, hash_attribute: :minimumAge
      attribute :upper_boundary, hash_attribute: :upperBoundary
      attribute :actual_date_time, hash_attribute: :actualDateTime
      references_one :boundary, deserializer: Money::Deserializer,  hash_attribute: :boundary
      references_one :actual_amount, deserializer: Money::Deserializer,  hash_attribute: :actualAmount
    end
  end
end
