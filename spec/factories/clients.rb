FactoryBot.define do
  factory :client do
    name    { Faker::Company.name }
    company
  end
end
