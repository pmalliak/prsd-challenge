class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]
  
  def index
    @books = Book.visible.published.includes(:author).order("authors.last_name", position: :desc)
    @pagy, @books = pagy(@books, items: 50)
  end
  
  def show
  end
  
  def create
    @book = Book.new(book_params)
    if !@book.save
      render :json => {:message => @book.errors.full_messages}, status: 500
    end
  end
  
  def update
    if !@book.update(book_params)
      render :json => {:message => @book.errors.full_messages}, status: 500
    end
  end
  
  def destroy
    if @book.destroy
      render :json => {:message => "Success"}, status: 200
    else
      render :json => {:message => @book.errors.full_messages}, status: 500
    end
  end
  
  private
  def set_book
    @book =  Book.find_by_id(params[:id])
    if @book.blank?
      render :json => {:message => "Book not found"}, status: 404
    end
  end
  
  def book_params
    params.permit(:title, :description, :isbn, :creation_date, :visible, :author_id, :publisher_id, :position)
  end
end