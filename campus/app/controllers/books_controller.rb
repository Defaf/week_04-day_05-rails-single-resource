class BooksController < ApplicationController 
    before_action :set_author #here I wanna to run on every sigle one 
    before_action :set_book, only: [:edit, :update, :destroy, :show]
    
    def index 
        @books = @author.books
    end 

    def show
    end
    
    def destroy
        @book.destroy
        redirect_to author_books_path(@author)
    end

    def new 
        @book =  @author.books.new 
    end 

    def create 
        @book = @author.books.create(book_params)
        redirect_to author_book_path(@author, @book)
    end 

    def edit
    end
  
    def update
        @book.update(book_params)
        redirect_to author_book_path(@author, @book)
    end

    def set_author
        @author = Author.find(params[:author_id])
    end 

    def set_book
        @book =  @author.books.find(params[:id])
    end 

    def book_params
        params.require(:book).permit(:title, :originalLanguage, :printDate)
    end
end
    