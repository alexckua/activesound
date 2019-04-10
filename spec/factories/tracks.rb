FactoryBot.define do
  factory :track do
    artist
    title { Faker::Lorem.sentence }
  end
end
