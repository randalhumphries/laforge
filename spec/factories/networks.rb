FactoryBot.define do
  factory :network do
    network_type { ["Range", "Subnet", "VLAN", "Gateway", "Host"].sample }
    ip_subnet    { Faker::Internet.private_ip_v4_address }
    description  { Faker::Lorem.sentence }
    client
  end
end
