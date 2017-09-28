FactoryGirl.define do
  factory :score do
    association :photo
    name "MyString"
    time 1
  end
end
