class CommentsController < ApplicationController
    http_basic_authenticate_with name: "soumya", password: "1234", only: [:destroy]
    def create
        @book = Book.find(params[:book_id])
        @comment = @book.comments.create(comment_params)
        redirect_to book_path(@book)
    end

    def destroy
        @book = Book.find(params[:book_id])
        @comment = @book.comments.find(params[:id])
        @comment.destroy
        redirect_to book_path(@book)
    end

    private def comment_params
        params.require(:comment).permit(:username, :reviews)
    end
end
