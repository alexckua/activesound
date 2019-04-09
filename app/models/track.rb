class Track < ApplicationRecord
  belongs_to :artist

  mount_base64_uploader :file, AudioUploader
end
