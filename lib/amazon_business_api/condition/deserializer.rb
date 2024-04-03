# frozen_string_literal: true

module AmazonBusinessApi
  class Condition
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :condition_value, hash_attribute: :conditionValue
      attribute :condition_note, hash_attribute: :conditionNote
      attribute :sub_condition, hash_attribute: :subCondition
    end
  end
end
