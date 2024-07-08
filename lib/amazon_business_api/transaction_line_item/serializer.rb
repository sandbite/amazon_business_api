# frozen_string_literal: true

module AmazonBusinessApi
  class TransactionLineItem
    class Serializer < AmazonBusinessApi::Serializer
      attribute :id, resource_attribute: :id
      attribute :name, resource_attribute: :name
      attribute :email, resource_attribute: :email
    end
  end
end
