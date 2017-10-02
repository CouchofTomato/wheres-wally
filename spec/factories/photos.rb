FactoryGirl.define do
  factory :photo do
    url "MyString"
    title "MyString"

    factory :photo_with_scores do
      transient do
        scores_count 5
      end

      after(:create) do |photo, evaluator|
        create_list(:score, evaluator.scores_count, photo: photo)
      end
    end
  end
end
