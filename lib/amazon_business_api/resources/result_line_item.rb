# frozen_string_literal: true

module AmazonBusinessApi
  class ResultLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reporting-api-v1-reference-1
    references_many :accepted_items, to: AcceptedItem
    references_many :rejected_items, to: RejectedItem
  end
end
