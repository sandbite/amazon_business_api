# frozen_string_literal: true

module AmazonBusinessApi
  class Reconciliation
    module Operations
      class Find < AmazonBusinessApi::Operation::Find
        class Contract < LedgerSync::Ledgers::Contract
          params do
            required(:feed_start_date).filled(:string)
            required(:feed_end_date).filled(:string)
          end
        end

        private

        def hash_to_deserialize
          response.body || []
        end

        def url
          "/reconciliation/2021-01-08/transactions?feedStartDate=#{resource.feed_start_date}&feedEndDate=#{resource.feed_end_date}"
        end

        def opts
          {}
        end

      end
    end
  end
end
