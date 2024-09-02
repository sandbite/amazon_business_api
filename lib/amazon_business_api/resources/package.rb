# frozen_string_literal: true

require_relative 'package_reference'
require_relative 'package_attribute'

module AmazonBusinessApi
  class Package < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/ordering-api-v1-reference
    references_one :package_reference, to: PackageReference
    references_many :package_attributes, to: PackageAttribute
  end
end
