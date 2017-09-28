class PhotosCharacter < ApplicationRecord
  validates :top_x, presence: true
  validates :top_y, presence: true
  validates :bottom_x, presence: true
  validates :bottom_y, presence: true
  validates :photo, presence: true
  validates :character, presence: true
  belongs_to :photo
  belongs_to :character
end
