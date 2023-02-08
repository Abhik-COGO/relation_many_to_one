class AuthorController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        @author = Author.create(
            a_name: params[:a_name],
            country: params[:country],
            dob: params[:dob]
        )
        render json: @author;
    end

    def delete
        @author = Author.find_by(a_name: params[:a_name])
        render json: @author;

        @author.destroy
    end

    def findBook
        @author = Author.find_by(a_name: params[:a_name])
        @book = Book.where(author_id: @author.id);
        render json: @book;
    end

    def allAuthors
        @author = Author.all
        render json: @author;
    end


end
