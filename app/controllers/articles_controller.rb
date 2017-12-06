class ArticlesController < ApplicationController
  before_action :set_archive

  def index
    @articles = Article.page(params[:page]).per(8).order('created_at DESC')
    @new_articles = Article.order('created_at DESC').limit(5)
  end

  def new
    @article = Article.new
    render layout: 'admin'
  end

  def create
    Article.create(article_params)
    redirect_to new_article_path
  end

  def show
    @article = Article.find(params[:id])
    @next_article = @article.next_page
    @previous_article = @article.previous_page
  end

  def edit
    @article = Article.find(params[:id])
    render layout: 'admin'
  end

  def update
    article = Article.find(params[:id])
    article.update(article_params)
  end

  def destroy
    Article.destroy(params[:id])
  end

  def search
    if params[:genre]
      # ジャンルによる検索
      @articles = Article.where(genre: params[:genre]).page(params[:page]).per(8)
    else
      # キーワードによる検索
      @articles = Article.where('title LIKE(?)', "%#{params[:search]}%").page(params[:page]).per(8)
    end
    render :index
  end

  def show
  end

  private
  def article_params
    params.require(:article).permit(:title, :genre, :content)
  end

  def set_archive
    @archives = Article.get_archive
  end
end
