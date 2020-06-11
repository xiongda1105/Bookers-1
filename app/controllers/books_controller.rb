class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to "/books/#{book.id}"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end



  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
