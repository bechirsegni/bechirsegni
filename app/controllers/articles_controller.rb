class ArticlesController < ApplicationController
 before_action :set_article, only: [:show, :edit, :update, :destroy]
 before_filter :authenticate_user!, except: [:index, :show]
 
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
  end

  def create
    @article = Article.create(article_params)
    if @article.save!
      redirect_to @article
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    if @article.destroy!
      redirect_to articles_path
    else
      render @article
    end
  end


  private

  def set_article
    @article = Article.find_by(id: params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:short_description,:description,:category)
  end

end
