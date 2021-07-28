FactoryBot.define do
  factory :teacher do
    name { "桃瀬智樹" }
    name_kana { "ももせともき" }
    grade { '大学3年生' }
    university { "深山大学" }
    undergraduate { "経済学部" }
    gender { 0 }
    phone_number { 000000000 }
  end
end