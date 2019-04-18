FactoryBot.define do
  factory :note do
    note_text { "MyText" }
    client { nil }
  end
end
