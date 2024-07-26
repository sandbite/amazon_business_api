# frozen_string_literal: true

require_relative 'invoice_issuer_detail'
require_relative 'physical_address'
require_relative 'merchant_detail'
require_relative 'tax_detail'
require_relative 'transaction_data_item'
require_relative 'invoice_level_fee_detail'

module AmazonBusinessApi
  class InvoiceDetail < AmazonBusinessApi::Resource
    # https://developer-docs.amazon.com/amazon-business/docs/reconciliation-api-v1-reference
    attribute :invoice_number, type: LedgerSync::Type::String
    attribute :invoice_date, type: LedgerSync::Type::String
    attribute :invoice_type, type: LedgerSync::Type::String
    attribute :associated_invoice_number, type: LedgerSync::Type::String
    attribute :associated_invoice_date, type: LedgerSync::Type::String
    references_one :invoice_issuer, to: InvoiceIssuerDetail
    references_one :bill_to_address, to: PhysicalAddress
    references_one :seller_information, to: MerchantDetail
    attribute :order_date, type: LedgerSync::Type::String
    attribute :currency_code, type: LedgerSync::Type::String
    attribute :invoice_total, type: LedgerSync::Type::String
    references_one :tax, to: TaxDetail
    references_many :transaction_data_items, to: TransactionDataItem
    references_many :fees, to: InvoiceLevelFeeDetail
  end
end
