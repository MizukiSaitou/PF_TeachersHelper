FactoryBot.define do
  factory :student do
    name { "須賀祐希" }
    name_kana { "すがゆうき" }
    grade { '中学1年生' }
    school { "村重中学校" }
    gender {0}
    phone_number {000000000}
  end
end