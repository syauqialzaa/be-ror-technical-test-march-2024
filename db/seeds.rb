User.create(
  username: "syauqialzaa",
  email: "email@email.com",
  password: "123123",
  password_confirmation: "123123"
)

5.times do
  author = Author.create(
    name: Faker::Book.author,
    address: Faker::Address.country
  )

  4.times do
    Book.create(
      title: Faker::Book.title,
      genre: Faker::Book.genre,
      year: Faker::Number.between(from: 1890, to: 2023),
      author: author,
    )
  end
end