# frozen_string_literal: true

require_relative '../package_reference/deserializer'
require_relative '../package_attribute/deserializer'

module AmazonBusinessApi
  class Package
    class Deserializer < AmazonBusinessApi::Deserializer
      references_one :package_reference, deserializer: PackageReference::Deserializer, hash_attribute: :packageReference
      references_many :package_attributes, deserializer: PackageAttribute::Deserializer, hash_attribute: :packageAttributes
    end
  end
end
