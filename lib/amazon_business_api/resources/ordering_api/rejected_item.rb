# frozen_string_literal: true

require_relative 'rejection_artifact'

module AmazonBusinessApi
  class RejectedItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :artifacts, to: RejectionArtifact
  end
end
