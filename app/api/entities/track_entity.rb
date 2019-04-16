class TrackEntity < Grape::Entity
  expose :id, :title
  expose :artist do |instance|
    instance.artist.try(&:name)
  end
end
