FactoryBot.define do
  factory :user do
    employee_number {123456}
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end