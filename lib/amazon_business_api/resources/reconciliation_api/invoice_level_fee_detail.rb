# frozen_string_literal: true

require_relative 'tax_detail'
require_relative '../common/money'
require_relative 'invoice_level_fee_apportionment_detail'

module AmazonBusinessApi
  class InvoiceLevelFeeDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :fee_type, type: LedgerSync::Type::String
    references_one :tax, to: TaxDetail
    references_one :discount, to: Money
    references_many :apportionment, to: InvoiceLevelFeeApportionmentDetail
  end
end
