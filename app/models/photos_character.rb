class PhotosCharacter < ApplicationRecord
  belongs_to :photo
  belongs_to :character
end
