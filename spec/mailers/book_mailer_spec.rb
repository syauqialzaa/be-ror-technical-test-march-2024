require "rails_helper"

RSpec.describe BookMailer, type: :mailer do
  describe 'new_book_email' do
    let(:user) { create(:user, email: 'test@example.com') }
    let(:book) { create(:book, title: 'Test Book') }
    let(:mail) { BookMailer.new_book_email(user, book) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Book added successfully.')
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(['be-ror@technicaltestmarch2024.id'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match("Book data has been created by #{user.username}")
      expect(mail.body.encoded).to match("You have just successfully inserted a book.")
      expect(mail.body.encoded).to match(book.title)
    end
  end
end
