# frozen_string_literal: true

require_relative '../invoice_issuer_detail/deserializer'
require_relative '../physical_address/deserializer'
require_relative '../merchant_detail/deserializer'
require_relative '../tax_detail/deserializer'
require_relative '../transaction_data_item/deserializer'
require_relative '../invoice_level_fee_detail/deserializer'

module AmazonBusinessApi
  class InvoiceDetail
    class Deserializer < AmazonBusinessApi::Deserializer
      attribute :invoice_number, hash_attribute: :invoiceNumber
      attribute :invoice_date, hash_attribute: :invoiceDate
      attribute :invoice_type, hash_attribute: :invoiceType
      attribute :associated_invoice_number, hash_attribute: :associatedInvoiceNumber
      attribute :associated_invoice_date, hash_attribute: :associatedInvoiceDate
      references_one :invoice_issuer, deserializer: InvoiceIssuerDetail::Deserializer, hash_attribute: :invoiceIssuer
      references_one :bill_to_address, deserializer: PhysicalAddress::Deserializer, hash_attribute: :billToAddress
      references_one :seller_information, deserializer: MerchantDetail::Deserializer, hash_attribute: :sellerInformation
      attribute :order_date, hash_attribute: :orderDate
      attribute :currency_code, hash_attribute: :currencyCode
      attribute :invoice_total, hash_attribute: :invoiceTotal
      references_one :tax, deserializer: TaxDetail::Deserializer, hash_attribute: :tax
      # references_many :transaction_data_items, deserializer: TransactionDataItem::Deserializer, hash_attribute: :transactionDataItems
      # references_many :fees, deserializer: InvoiceLevelFeeDetail::Deserializer, hash_attribute: :fees
    end
  end
end
