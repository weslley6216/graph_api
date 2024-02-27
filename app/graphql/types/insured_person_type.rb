# frozen_string_literal: true

module Types
  class InsuredPersonType < ::Types::BaseObject
    field :name, String
    field :cpf, String
  end
end
