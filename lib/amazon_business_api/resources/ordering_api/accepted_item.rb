# frozen_string_literal: true

require_relative 'acceptance_artifact'

module AmazonBusinessApi
  class AcceptedItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :quantity, type: LedgerSync::Type::Integer
    references_many :artifacts, to: AcceptanceArtifact
  end
end
