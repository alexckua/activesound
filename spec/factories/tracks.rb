FactoryBot.define do
  factory :track do
    sequence(:title) { |n| "Song_#{n}" }
    file 'file'
  end
end
