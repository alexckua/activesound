class Types::QueryType < Types::BaseObject
  include Queries::AlbumQueries
  include Queries::ArtistQueries
  include Queries::SongQueries
end
