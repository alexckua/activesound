require 'carrierwave/audio'

class AudioUploader < CarrierWave::Uploader::Base
  include CarrierWave::Audio

  MIME::Types.add(
    MIME::Type.new('audio/mp3').tap do |type|
      type.add_extensions 'mp3'
    end
  )

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_whitelist
    %w[mp3]
  end
end
