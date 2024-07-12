# frozen_string_literal: true

require_relative '../../common/money/deserializer'

module AmazonBusinessApi
  class AcceptanceArtifact
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :acceptance_artifact_type, hash_attribute: :acceptanceArtifactType
    end
  end
end
