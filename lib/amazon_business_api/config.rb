# frozen_string_literal: true

require_relative 'client'

args = {
  base_module: AmazonBusinessApi,
  root_path: 'amazon_business_api'
}

LedgerSync.register_ledger(:amazon_business_api, args) do |config|
  config.name = 'AmazonBusinessApi'
end
