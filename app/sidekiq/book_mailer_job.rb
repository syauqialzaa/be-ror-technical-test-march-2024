require 'sidekiq'

class BookMailerJob
  include Sidekiq::Job

  def perform(user_id, book_id)
    user = User.find(user_id)
    book = Book.find(book_id)

    puts "Sending email to #{user.username}..."
    BookMailer.new_book_email(user, book).deliver_later
  end
end
