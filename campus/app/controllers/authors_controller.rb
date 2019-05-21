class AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :edit, :update, :destroy]
    def index 
        @authors = Author.all
    end 

    def show
    end 

    def destroy 
        @author.destroy
        redirect_to authors_path
    end 

    def new 
        @author =  Author.new
    end 

    def create 
        @author =  Author.create(author_params)
        redirect_to author_path(@author)
    end 

    def edit
    end
    def update
        @author.update(author_params)
        redirect_to author_path(@author)
    end

    def set_author
        @author =  Author.find(params[:id])   
    end 

    def author_params
        params.require(:author).permit(:firstName, :lastName,:location, :nickname, :age, :homeTown)
    end 

end 