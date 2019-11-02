class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  has_one_attached :cover

  validates :title, :description, presence: true

  def attachment_url
    if Rails.application.config.active_storage.service == :amazon
      return cover.try(:service_url)
    else
      Rails.application.routes.url_helpers.rails_blob_path(cover, only_path: true) if cover.attached?
    end
  end
end
