class ArticlesController < ApplicationController
  def index
    @articles = rom.relation(:articles).as(:articles)
  end

  def new
    @article = NewArticleForm.build
  end

  def create
    @article = NewArticleForm.build(params[:article]).save

    if @article.success?
      redirect_to :articles
    else
      render :new
    end
  end

  def edit
    @article = UpdateArticleForm.build_from_existing(params[:id])
  end

  def update
    @article = UpdateArticleForm.build(params[:article], id: params[:id]).save

    if @article.success?
      redirect_to :articles
    else
      render :edit
    end
  end

  def show
    @article = rom.relation(:articles).by_id(params[:id]).as(:articles).one!
  end

  def destroy
    rom.command(:articles).delete.by_id(params[:id])
  end
end
