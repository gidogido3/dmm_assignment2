class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def edit
    @edit_book = Book.find(params[:id])
  end

  def update
    @edit_book = Book.find(params[:id])

    if @edit_book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@edit_book.id)
    else
      render :edit
    end

  end

  def show
    @show_book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all

    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render :index
    end

  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
      flash[:notice] = "Book was successfully destroyed."
      redirect_to books_path
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
