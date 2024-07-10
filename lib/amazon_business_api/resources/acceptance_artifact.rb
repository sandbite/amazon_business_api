# frozen_string_literal: true

module AmazonBusinessApi
  class AcceptanceArtifact < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :acceptance_artifact_type, type: LedgerSync::Type::String
  end
end
