# frozen_string_literal: true

module Mutations
  class CreatePolicyMutation < ::Mutations::BaseMutation
    argument :attributes, Mutations::Inputs::PolicyInput, required: true

    field :policy, Types::PolicyType, null: true

    def resolve(attributes:)
      Publisher.publish('policy-created', attributes)
    end
  end
end
