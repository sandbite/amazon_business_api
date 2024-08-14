# frozen_string_literal: true

require_relative '../acceptance_artifact/deserializer'

module AmazonBusinessApi
  class AcceptedItem
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :quantity, hash_attribute: :quantity
      references_many :artifacts, deserializer: AcceptanceArtifact::Deserializer, hash_attribute: :artifacts
    end
  end
end
