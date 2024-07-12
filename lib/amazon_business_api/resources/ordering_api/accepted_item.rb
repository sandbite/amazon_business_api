# frozen_string_literal: true

require_relative 'acceptance_artifact'

module AmazonBusinessApi
  class AcceptedItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :artifacts, to: AcceptanceArtifact
  end
end
