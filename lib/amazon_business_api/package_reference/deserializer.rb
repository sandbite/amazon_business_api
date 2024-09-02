# frozen_string_literal: true

module AmazonBusinessApi
  class PackageReference
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :package_reference_type, hash_attribute: :packageReferenceType
    end
  end
end
