# frozen_string_literal: true

module Types
  class Objects::BirdType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :image_url, String
    field :birthday, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :records, [Types::Objects::RecordType]
  end
end
