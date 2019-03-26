FactoryBot.define do
  factory :track do
    sequence(:title) { |n| "Song_#{n}" }
  end
end
