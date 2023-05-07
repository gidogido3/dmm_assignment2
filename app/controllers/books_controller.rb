class BooksController < ApplicationController
  def index
    @book = Book.new
  end

  def edit
  end

  def show
  end

  def create
    book = Book.new(book_params)
    book.save
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
