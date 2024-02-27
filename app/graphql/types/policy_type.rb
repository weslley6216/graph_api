# frozen_string_literal: true

module Types
  class PolicyType < ::Types::BaseObject
    field :number, String
    field :issued_date, String
    field :end_coverage_date, String
    field :vehicle, Types::VehicleType
    field :insured_person, Types::InsuredPersonType
  end
end
