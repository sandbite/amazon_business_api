# frozen_string_literal: true

require_relative 'money'
require_relative 'package'
require_relative 'package_reference'

module AmazonBusinessApi
  class AcceptanceArtifact < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :acceptance_artifact_type, type: LedgerSync::Type::String

    # Attributes below are all possible attributes of an AcceptanceArtifact
    attribute :identifier, type: LedgerSync::Type::String
    attribute :lower_boundary, type: LedgerSync::Type::String
    attribute :upper_boundary, type: LedgerSync::Type::String
    references_one :amount, to: Money
    attribute :category, type: LedgerSync::Type::String
    attribute :type, type: LedgerSync::Type::String
    # references_many :packages, to: Package
    # references_many :package_references, to: PackageReference
    attribute :quantity, type: LedgerSync::Type::Integer
  end
end
