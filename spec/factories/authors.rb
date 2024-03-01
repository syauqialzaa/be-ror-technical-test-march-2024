FactoryBot.define do
  factory :author do
    name { Faker::Book.author }
    address { Faker::Address.country }
  end
end
