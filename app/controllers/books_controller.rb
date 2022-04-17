class BooksController < ApplicationController 
    
    def index 
        @books = Book.all 
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
    
    private
    def book_params
        params.require(:book).permit(:year, :month, :inout, :category, :amount)
    end
end