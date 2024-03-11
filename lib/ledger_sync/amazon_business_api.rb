# frozen_string_literal: true

require 'ledger_sync'

module LedgerSync
  module AmazonBusinessApi
    def self.root(*paths)
      File.join(File.expand_path('../..', __dir__), *paths.map(&:to_s))
    end
  end
end

require_relative 'amazon_business_api/config'
