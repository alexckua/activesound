class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  has_one_attached :cover

  validates :title, :description, presence: true

  def avatarcover_url
    cover.try(:service_url)
  end
end
