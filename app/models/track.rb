class Track < ApplicationRecord
  mount_base64_uploader :file, AudioUploader

  belongs_to :artist, required: true

  validates :title, presence: true
end
