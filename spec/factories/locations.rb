FactoryBot.define do
  factory :location do
    primary_address   { Faker::Address.street_address }
    secondary_address { Faker::Address.secondary_address }
    city              { Faker::Address.city }
    state             { Faker::Address.state }
    zip               { Faker::Address.zip }
    main_phone        { Faker::PhoneNumber.phone_number }
    name              { "Main" }
    client
  end
end
