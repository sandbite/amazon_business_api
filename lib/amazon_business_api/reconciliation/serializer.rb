# frozen_string_literal: true

module AmazonBusinessApi
  class Reconciliation
    class Serializer < AmazonBusinessApi::Serializer
      attribute :externalId, resource_attribute: :external_id
      attribute :feedStartDate, resource_attribute: :feed_start_date
      attribute :feedEndDate, resource_attribute: :feed_end_date
    end
  end
end
