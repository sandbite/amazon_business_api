# frozen_string_literal: true

require_relative '../operation'

module AmazonBusinessApi
  class Operation
    class Find
      include AmazonBusinessApi::Operation::Mixin

      private

      def operate
        response_to_operation_result(
          response: client.find(
            path: ledger_resource_path
          )
        )
      end
    end
  end
end
