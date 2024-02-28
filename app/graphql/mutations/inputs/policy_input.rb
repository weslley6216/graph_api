# frozen_string_literal: true

module Mutations
  module Inputs
    class PolicyInput < ::Types::BaseInputObject
      argument :insured_person, Mutations::Inputs::InsuredPersonInput
      argument :vehicle,        Mutations::Inputs::VehicleInput
    end
  end
end
