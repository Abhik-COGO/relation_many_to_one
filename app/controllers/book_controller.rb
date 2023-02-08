class BookController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        author = Author.find_by(id: params[:author_id])
        book = author.book.create(b_name: params[:b_name], published_at: Time.now, page: params[:page])
        render json: book;
    end

    # def create
    #     @book = Book.create(
    #         b_name: params[:b_name],
    #         published_at: params[:published_at],
    #         page: params[:page]
    #     )
    #     render json: @book;
    # end

    def delete
        @book = Book.find_by(b_name: params[:b_name])
        render json: @book;
        @book.destroy;
    end

    def allBooks
        @books = Book.all
        render json: @books
    end

    def page
        pagelim = 2;
        pageNo = params[:pageNo].to_i;

        #limit is limitting the  number of article to be returned
        # offset sets the last index + 1 from where it need to start 
        @books = Book.limit(pagelim).offset((pageNo -1)*pagelim);
        render json: @books;
    end

end
