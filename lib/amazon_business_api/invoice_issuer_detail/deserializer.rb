# frozen_string_literal: true

module AmazonBusinessApi
  class InvoiceIssuerDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :name, hash_attribute: :name
      attribute :registration_number, hash_attribute: :registrationNumber
    end
  end
end
