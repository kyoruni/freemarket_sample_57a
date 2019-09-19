FactoryBot.define do
  factory :user do
    id                    {1}
    email                 {Faker::Internet.email}
    password              {"a12345678"}
    password_confirmation {"a12345678"}
    name                  {"メルカリたろう"}
    last_name             {"佐藤"}
    first_name            {"太郎"}
    last_name_kana        {"サトウ"}
    first_name_kana       {"タロウ"}
    birth_year            {1990}
    birth_month           {1}
    birth_day             {1}
    phone_number          {"0900000000"}
  end
end