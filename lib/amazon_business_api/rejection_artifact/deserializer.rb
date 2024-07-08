# frozen_string_literal: true

module AmazonBusinessApi
  class RejectionArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :rejection_artifact_type, hash_attribute: :rejectionArtifactType
    end
  end
end
