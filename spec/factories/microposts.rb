FactoryBot.define do
  factory :micropost do
    content { "context" }
    association :user
  end
end
