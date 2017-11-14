class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(8).order('created_at DESC')
    @new_articles = Article.order('created_at DESC').limit(5)
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
