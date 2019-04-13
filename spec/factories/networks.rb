FactoryBot.define do
  factory :network do
    network_type { "MyString" }
    ip_subnet { "MyString" }
    description { "MyString" }
    client { nil }
  end
end
