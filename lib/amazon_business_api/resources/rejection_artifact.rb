# frozen_string_literal: true

module AmazonBusinessApi
  class RejectionArtifact < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :rejection_artifact_type, type: LedgerSync::Type::String
  end
end
