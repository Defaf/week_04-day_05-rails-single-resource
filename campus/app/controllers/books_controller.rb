class BooksController < ApplicationController 

    def index 
        @books = Book.all
    end 

    def show
        # puts params "will print the result in the consol"
        @book =  Book.find(params[:id])
    end
    
    def destroy
        @book =  Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    def new 
        @book = Book.new 
    end 

    def create 
        @book = Book.create (book_params)
        redirect_to book_path(@book)
    end 

    def edit
        @book = Book.find(params[:id])
    end
  
    def update
        @book = Book.find(params[:id])
        @book.update(book_params)
        redirect_to book_path(@book)
    end
  
    def book_params
        params.require(:book).permit(:title)
    end
end
    