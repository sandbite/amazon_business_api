# frozen_string_literal: true

module AmazonBusinessApi
  class Operation
    module Mixin
      def self.included(base)
        base.include LedgerSync::Ledgers::Operation::Mixin
      end
    end
  end
end
