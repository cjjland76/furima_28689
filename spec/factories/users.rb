FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name             {"たろう"}
    first_name            {"やまだ"}
    last_name_kana        {"カナ"}
    first_name_kana       {"カナ"}
    birthday              {"1111/11/11"}
  end
end