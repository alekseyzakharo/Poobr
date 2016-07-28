class CommentsController < ApplicationController
  def new
    @comment = Comment.new(comment_params)
  end

  def create
    @posting = Posting.find(params[:posting_id])
    @comment = @posting.comments.create(comment_params)
    #@comment = Posting.find(params[:posting_id]).comments.create(comment_params)
    #redirect_to posting_path(Posting.find(params[:posting_id]))
    redirect_to posting_path(@posting)

  end

  def destroy
    @posting = Posting.find(params[:posting_id])
    @comment = @posting.comments.find(params[:id])
    @comment.destroy
    redirect_to posting_path(@posting)
  end

#params[:comment].permit(:commenter, :body)

private

    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end

end
