class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html {redirect_to "/tweets/#{comment.tweet.id}"}
      format.json
    end
  end

  private
  def comment_params
    params.require(:comments).permit(:text, :tweet_id).merge(user_id: current_user.id)
  end
end
