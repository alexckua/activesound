# frozen_string_literal: true

module Queries::ArtistQueries
  extend ActiveSupport::Concern

  included do
    field :artists, [Types::ArtistType], null: true

    field :artist, Types::ArtistType, null: true do
      argument :id, Integer, required: true
    end
  end

  def artists
    Artist.all
  end

  def artist(id:)
    Artist.find_by(id: id)
  end
end