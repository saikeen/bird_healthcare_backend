module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :bird, Types::Objects::BirdType, null: false do
      description 'Find a bird by ID'
      argument :id, ID, required: true
    end
 
    def bird(id:)
      Bird.find(id)
    end
  end
end
