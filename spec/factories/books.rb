FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    genre { Faker::Book.genre }
    year { Faker::Number.between(from: 1890, to: 2023) }
    author
  end
end
