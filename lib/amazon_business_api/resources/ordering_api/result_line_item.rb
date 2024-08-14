# frozen_string_literal: true

require_relative 'accepted_item'
require_relative 'rejected_item'

module AmazonBusinessApi
  class ResultLineItem < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    references_many :accepted_items, to: AcceptedItem
    references_many :rejected_items, to: RejectedItem
  end
end
