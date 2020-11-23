class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])
    @comment = Comment.new
  end

  def create
    @article = Article.find(params[:article_id])
    p @comment = Comment.new(comment_params)
    @comment.article = @article
    @comment.save
    redirect_to articles_path
  end

  private

  def comment_params
    params.require('comment').permit(:content, :article_id)
  end
end
