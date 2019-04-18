module Types
  class TrackType < Types::BaseObject
    graphql_name 'Track'
    field :id, ID, null: true
    field :title, String, null: true
  end
end
