FactoryBot.define do
  factory :user do
    name { 'admin' }
    email { 'admin@example.com' }
    card { 1034567890 }
    phone { 3176473425 }
  end
end
