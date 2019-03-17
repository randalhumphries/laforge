FactoryBot.define do
  factory :contact do
    first_name { "MyString" }
    last_name { "MyString" }
    title { "MyString" }
    email { "MyString" }
    primary_phone { "MyString" }
    secondary_phone { "MyString" }
    client { nil }
  end
end
