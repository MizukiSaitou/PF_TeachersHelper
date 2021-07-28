FactoryBot.define do
  factory :shift do
    start_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    teacher
  end
end