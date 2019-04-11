FactoryBot.define do
  factory :account do
    account_type  { "Router" }
    name          { Faker::App.name }
    address       { Faker::Internet.private_ip_v4_address }
    username      { Faker::Internet.username }
    password      { Faker::Internet.password }
    client
  end
end
