class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(8).order('created_at DESC')
    @new_articles = Article.order('created_at DESC').limit(5)
  end

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
    redirect_to new_article_path
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
    params.require(:article).permit(:title, :genre, :content)
  end
end
