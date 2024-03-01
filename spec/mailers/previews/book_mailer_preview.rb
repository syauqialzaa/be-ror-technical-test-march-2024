# Preview all emails at http://localhost:3000/rails/mailers/book_mailer
class BookMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/book_mailer/new_book_email
  def new_book_email
    BookMailer.new_book_email
  end

end
