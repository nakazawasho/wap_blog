class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    Article.save(article_params)
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
  end

  def destroy
    Article.destroy(params[:id])
  end

  private
  def article_params
    params.permit(:titile, :genre, :content)
  end
end
