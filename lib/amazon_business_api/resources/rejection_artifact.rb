# frozen_string_literal: true

require_relative 'money'

module AmazonBusinessApi
  class RejectionArtifact < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    attribute :rejection_artifact_type, type: LedgerSync::Type::String

    # Attributes below are all possible attributes of a RejectionArtifact
    attribute :quantity, type: LedgerSync::Type::Integer
    attribute :message, type: LedgerSync::Type::String
    attribute :code, type: LedgerSync::Type::String
    attribute :minimum_age, type: LedgerSync::Type::Integer
    attribute :upper_boundary, type: LedgerSync::Type::String
    attribute :actual_date_time, type: LedgerSync::Type::String
    references_one :boundary, to: Money
    references_one :actual_amount, to: Money
  end
end
