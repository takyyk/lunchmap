FactoryBot.define do
  factory :user do
    first_name { "太郎" }
    last_name { "田中" }
    sequence(:email) { |n| "test+#{n}@test.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
