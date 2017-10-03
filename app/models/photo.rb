class Photo < ApplicationRecord
  validates :url, presence: true
  validates :title, presence: true

  has_many :scores
  has_many :photos_characters
  has_many :characters, through: :photos_characters
end
