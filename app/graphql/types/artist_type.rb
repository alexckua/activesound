module Types
  class ArtistType < Types::BaseObject
    graphql_name 'Artist'
    field :id, ID, null: false
    field :name, String, null: false
  end
end
