class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path(@book.id)
  end

  def index
    @book = Book.new
    @books = Book.all

  end

  def show
    @book = Book.find(params[:id])
  end


  private
  def book_params
    parmit.require(:book).parmit(:title, :body)
  end
end