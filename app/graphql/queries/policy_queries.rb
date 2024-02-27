# frozen_string_literal: true

module Queries
  module PolicyQueries
    def policies
      response = Faraday.get("#{ENV['POLICY_SERVICE_API_URL']}/v1/policies")
      JSON.parse(response.body)
    end

    def policy(number:)
      response = Faraday.get("#{ENV['POLICY_SERVICE_API_URL']}/v1/policies/#{number}")
      JSON.parse(response.body)
    end
  end
end
