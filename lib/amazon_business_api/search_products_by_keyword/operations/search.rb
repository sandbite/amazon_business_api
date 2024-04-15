# frozen_string_literal: true

module AmazonBusinessApi
  class SearchProductsByKeyword
    module Operations
      class Search < AmazonBusinessApi::Operation::Search
        private

        def url
          "/products/2020-08-26/products"
        end

        def opts
          {
            form_params: serializer.serialize(resource:).merge(
              'productRegion' => client.region[:product_region],
              'locale' => 'en_US',
              'facets' => 'OFFERS,IMAGES'
            )
          }
        end

        def request_method
          :get
        end

      end
    end
  end
end
