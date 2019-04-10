FactoryBot.define do
  factory :account do
    type     { "Router" }
    address  { Faker::Internet.private_ip_v4_address }
    username { Faker::Internet.username }
    password { Faker::Internet.password }
    client
  end
end
