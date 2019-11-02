# frozen_string_literal: true

module Queries::AlbumQueries
  extend ActiveSupport::Concern

  included do
    field :albums, [Types::AlbumType], null: true

    field :album, Types::AlbumType, null: true do
      argument :id, Integer, required: true
    end
  end

  def albums
    Album.all
  end

  def album(id:)
    Album.find_by(id: id)
  end
end