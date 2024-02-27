# frozen_string_literal: true

module Queries
  module PolicyInterfaces
    extend ActiveSupport::Concern

    included do
      field :policies, [Types::PolicyType], null: false, description: 'Find a list of policies'
      field :policy, Types::PolicyType, null: false, description: 'Find a policy by passing the number' do
        argument :number, String, required: true, description: 'Number of policy'
      end
    end
  end
end
