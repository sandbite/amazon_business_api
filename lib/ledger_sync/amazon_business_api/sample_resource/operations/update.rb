# frozen_string_literal: true

module LedgerSync
  module AmazonBusinessApi
    class SampleResource
      module Operations
        class Update < AmazonBusinessApi::Operation::Update
          class Contract < LedgerSync::Ledgers::Contract
            params do
              required(:external_id).filled(:string)
              required(:ledger_id).filled(:string)
              required(:Name).maybe(:string)
              required(:Email).maybe(:string)
            end
          end
        end
      end
    end
  end
end
