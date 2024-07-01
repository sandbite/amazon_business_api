# frozen_string_literal: true

require_relative 'result_line_item'
require_relative 'acceptance_artifact'
require_relative 'rejection_artifact'
require_relative 'request_line_item'

module AmazonBusinessApi
  class PlaceOrder < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    references_many :result_line_items, to: ResultLineItem
    references_many :acceptance_artifacts, to: AcceptanceArtifact
    references_many :rejection_artifacts, to: RejectionArtifact
    references_many :line_items, to: RequestLineItem
    references_many :place_order_attributes, to: PlaceOrderAttribute
    references_many :place_order_expectations, to: PlaceOrderExpectation
  end
end
