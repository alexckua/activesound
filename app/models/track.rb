class Track < ApplicationRecord
  mount_base64_uploader :file, AudioUploader
end
