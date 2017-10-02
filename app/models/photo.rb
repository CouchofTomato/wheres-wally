class Photo < ApplicationRecord
  validates :url, presence: true
  validates :title, presence: true
  
  has_many :scores
end
