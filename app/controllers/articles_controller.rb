class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(articles_params)
    redirect_to articles_path
  end
  private

  def articles_params
    params.require("article").permit(:title, :content)
  end

end
