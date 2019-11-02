# frozen_string_literal: true

module Queries::SongQueries
  extend ActiveSupport::Concern

  included do
    field :songs, [Types::SongType], null: true

    field :song, Types::SongType, null: true do
      argument :id, Integer, required: true
    end
  end

  def songs
    Song.all
  end

  def song(id:)
    Song.find_by(id: id)
  end
end