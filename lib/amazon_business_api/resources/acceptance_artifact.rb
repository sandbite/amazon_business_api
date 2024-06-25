# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class AcceptanceArtifact < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    attribute :acceptance_artifact_type, type: LedgerSync::Type::String
    attribute :lower_bounday, type: LedgerSync::Type::String
    attribute :upper_boundary, type: LedgerSync::Type::String
    references_one :amount, to: Money
    attribute :category, type: LedgerSync::Type::String
    attribute :type, type: LedgerSync::Type::String
    attribute :identifier, type: LedgerSync::Type::String
  end
end
