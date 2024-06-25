# frozen_string_literal: true

module AmazonBusinessApi
  class ResultLineItem
    class Deserializer < AmazonBusinessApi::Deserializer
      references_many :accepted_items, deserializer: AcceptedItem::Deserializer, hash_attribute: :acceptedItems
      references_many :rejected_items, deserializer: RejectedItem::Deserializer, hash_attribute: :rejectedItems
    end
  end
end
