class CommentsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @comment = current_user.comments.new(comment_params)
    @comment.book_id = @book.id
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy

  end


private
def comment_params
  params.require(:comment).permit(:content,:book_id)
end


end
