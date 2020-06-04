class BookController < ApplicationController
  def index
    books = Books.all 
    @want_to_read_books = books.where(status: 'Want to read')
    @reading_books = books.where(ststus: 'Reading')
    @read_books = books.where(status: 'Read') 
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    Book.create(book_params)
    redirect_to books_path
  end

  def book_params
    params.require(:book).permit!
  end
end