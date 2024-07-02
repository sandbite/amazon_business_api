# frozen_string_literal: true

module AmazonBusinessApi
  class PlaceOrder
    module Operations
      class Create < AmazonBusinessApi::Operation::Create
        private

        def url
          "/ordering/2022-10-30/orders"
        end

        def opts
          {
            body: serializer.serialize(resource:)
          }
        end
      end
    end
  end
end
