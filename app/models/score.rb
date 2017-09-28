class Score < ApplicationRecord
  validates :name, presence: true
  validates :time, presence: true
  validates :photo, presence: true
  belongs_to :photo
end
