class BooksController < ApplicationController
  before_action :set_authors, only: [:new, :create]

  def index
    @books = Book.page(params[:page]).per(10)
  end

  def new
    if current_user
      @book = Book.new
    else
      redirect_to root_path
    end
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      BookMailerJob.perform_async(current_user.id, @book.id)
      redirect_to books_path, notice: "Book added successfully."
    else
      render :new
    end
  end

  private
  def set_authors
    @authors = Author.all
  end

  def book_params
    params.require(:book).permit(:title, :genre, :year, :author_id)
  end
end
