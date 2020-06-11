class BooksController < ApplicationController
  def new
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to "/books/#{book.id}"
      flash[:notice] = "Book was successfully created."
    else
      render "/books"
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to "/books/#{book.id}"
    flash[:notice] = "Book was successfully updated."
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to "/books"
    flash[:notice] = "Book was successfully destroyed."
  end


  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
