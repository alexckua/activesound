module Types
  class QueryType < Types::BaseObject
    field :artist, ArtistType, null: true do
      argument :id, ID, required: true
    end

    field :track, TrackType, null: true do
      argument :id, ID, required: true
    end

    field :allTracks, [TrackType], null: true
    field :allArtists, [ArtistType], null: true

    def track(id:)
      Track.find(id)
    end

    def artist(id:)
      Artist.find(id)
    end

    def all_artists
      Artist.all
    end

    def all_tracks
      Track.all
    end
  end
end
