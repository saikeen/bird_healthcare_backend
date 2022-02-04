# frozen_string_literal: true

module Types
  class Objects::RecordType < Types::BaseObject
    field :id, ID, null: false
    field :bird, Types::Objects::BirdType, null: false
    field :date, GraphQL::Types::ISO8601Date
    field :body_weight, Float
    field :food_weight, Float
    field :weather, String
    field :room_temperature, Float
    field :note, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
