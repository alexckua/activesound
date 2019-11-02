class Artist < ApplicationRecord
  has_many :songs
  has_many :albums

  has_one_attached :avatar

  validates :title, :description, presence: true

  def attachment_url
    if Rails.application.config.active_storage.service == :amazon
      return avatar.try(:service_url)
    else
      Rails.application.routes.url_helpers.rails_blob_path(avatar, only_path: true) if avatar.attached?
    end
  end
end
