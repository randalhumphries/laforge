FactoryBot.define do
  factory :contact do
    first_name      { Faker::Name.first_name }
    last_name       { Faker::Name.last_name }
    title           { "CEO" }
    email           { Faker::Internet.email }
    primary_phone   { Faker::PhoneNumber.phone_number }
    secondary_phone { Faker::PhoneNumber.phone_number }
    client
  end
end
