class Character < ApplicationRecord
  validates :name, presence: true
  
  has_many :photos_characters
  has_many :photos, through: :photos_characters
end
