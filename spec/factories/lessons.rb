FactoryBot.define do
  factory :lesson do
    start_at { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
    teacher
    student
    subject
  end
end