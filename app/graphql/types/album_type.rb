class Types::AlbumType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: true
  field :description, String, null: true
  field :attachment_url, String, null: true
  field :songs, [Types::SongType], null: true
  field :artist, Types::ArtistType, null: true
end
