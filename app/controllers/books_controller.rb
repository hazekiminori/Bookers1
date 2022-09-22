class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/100452'
  end
  
 private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end

end