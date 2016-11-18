
  class CommentsController < ApplicationController
  def create
    #article = Article.find(params[:article_id])
    comment = Comment.new(comment_params)
    comment.article_id = params[:article_id]
    if comment.save
        redirect_to article_path(params[:article_id])
      else
        redirect_to article_path(params[:article_id])
      end

  end

  private
    def comment_params
      params.require(:comment).permit(:name, :content)
    end
end
