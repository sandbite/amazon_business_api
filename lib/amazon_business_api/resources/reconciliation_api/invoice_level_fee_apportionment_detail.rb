# frozen_string_literal: true

require_relative '../common/money'

module AmazonBusinessApi
  class InvoiceLevelFeeApportionmentDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    references_one :tax_exclusive_fee, to: Money
    references_one :tax_amount, to: Money
  end
end
