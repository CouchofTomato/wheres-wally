FactoryGirl.define do
  factory :photos_character do
    association (:photo)
    association (:character)
    top_x 1
    top_y 1
    bottom_x 1
    bottom_y 1
  end
end
