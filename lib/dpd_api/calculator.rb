# encoding: utf-8

module DpdApi
  class Calculator < Base
    class << self
      def service_cost(params = {})
        method = :get_service_cost2
        response(method, params, namespace: :request)
      end

      def service_cost_by_parcels(params = {})
        method = :get_service_cost_by_parcels2
        response(method, params, namespace: :request)
      end

      def service_cost_international(params = {})
        method = :get_service_cost_international
        response(method, params, namespace: :request)
      end

      protected

      def url
        "#{DpdApi.configuration.base_url}/services/calculator2?wsdl"
      end
    end
  end
end
