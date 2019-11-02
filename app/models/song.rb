class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album

  has_one_attached :track

  def attachment_url
    if Rails.application.config.active_storage.service == :amazon
      return track.try(:service_url)
    else
      Rails.application.routes.url_helpers.rails_blob_path(track, only_path: true) if track.attached?
    end
  end
end
