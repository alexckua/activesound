class Types::ArtistType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: true
  field :description, String, null: true
  field :attachment_url, String, null: true
  field :albums, [Types::AlbumType], null: true
end
