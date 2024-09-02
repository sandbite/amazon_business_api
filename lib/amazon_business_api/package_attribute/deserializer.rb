# frozen_string_literal: true

module AmazonBusinessApi
  class PackageAttribute
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :package_attribute_type, hash_attribute: :packageAttributeType
    end
  end
end
