# frozen_string_literal: true

require_relative '../accepted_item/deserializer'
require_relative '../rejected_item/deserializer'

module AmazonBusinessApi
  class ResultLineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :external_id, hash_attribute: :externalId
      references_many :accepted_items, deserializer: AcceptedItem::Deserializer, hash_attribute: :acceptedItems
      references_many :rejected_items, deserializer: RejectedItem::Deserializer, hash_attribute: :rejectedItems
    end
  end
end
