require 'rails_helper'

RSpec.describe Book, type: :model do
  # testing validation
  it "has a valid factory" do
    expect(build(:book)).to be_valid
  end

  it "is invalid without a title" do
    book = build(:book, title: nil)
    expect(book).to be_invalid
    expect(book.errors[:title]).to include("can't be blank")
  end

  it "is invalid without a genre" do
    book = build(:book, genre: nil)
    expect(book).to be_invalid
    expect(book.errors[:genre]).to include("can't be blank")
  end

  it "is invalid without a year" do
    book = build(:book, year: nil)
    expect(book).to be_invalid
    expect(book.errors[:year]).to include("can't be blank")
  end

  it "is invalid with a non-integer year" do
    book = build(:book, year: "invalid_year")
    expect(book).to be_invalid
    expect(book.errors[:year]).to include("is not a number")
  end

  it "is valid with all required attributes" do
    expect(build(:book)).to be_valid
  end

  # testing relation with author
  it "belongs to an author" do
    author = create(:author)
    book = create(:book, author: author)
    expect(book.author).to eq(author)
  end

  it "calculates the age of the book" do
    author = create(:author, name: "JK Rowling", address: "United Kingdom")
    book = create(:book, title: "Harry Potter", genre: "Fantasy", year: 2012, author: author)
    expect(book.author.name).to eq("JK Rowling")
  end
end
