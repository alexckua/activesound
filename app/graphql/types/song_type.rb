class Types::SongType < Types::BaseObject
  field :id, ID, null: false
  field :title, String, null: true
  field :attachment_url, String, null: true
  field :album, Types::AlbumType, null: true
  field :artist, Types::ArtistType, null: true
end
