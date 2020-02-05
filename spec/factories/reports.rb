FactoryBot.define do
  factory :report do

    association :user
    sequence(:title) {|n|"テストタイトル#{n}"}
    sequence(:body) {|n|"テストコンテント#{n}"}
  end
end
