# frozen_string_literal: true

module AmazonBusinessApi
  class Operation
    module Mixin
      def self.included(base)
        base.include LedgerSync::Ledgers::Operation::Mixin
        base.include InstanceMethods # To ensure these override parent methods
      end

      module InstanceMethods
        def deserialized_resource(response:)
          deserializer.deserialize(
            hash: response,
            resource:
          )
        end

        def ledger_resource_path
          @ledger_resource_path ||= "#{ledger_resource_type_for_path}/#{resource.ledger_id}"
        end

        def ledger_resource_type_for_path
          amazon_business_api_resource_type.pluralize.downcase
        end

        def response_to_operation_result(response:)
          if response.success?
            success(
              resource: deserialized_resource(
                response: response.body
              ),
              response:
            )
          else
            failure
            # TODO: implement failure handler
          end
        end

        def perform
          super
        rescue LedgerSync::Error::OperationError, OAuth2::Error => e
          failure(e)
        ensure
          client.update_secrets_in_dotenv
        end

        def amazon_business_api_resource_type
          @amazon_business_api_resource_type ||= client.class.ledger_resource_type_for(
            resource_class: resource.class
          )
        end
      end
    end
  end
end
