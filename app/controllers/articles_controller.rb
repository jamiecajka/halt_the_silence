# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order("created_at DESC")
    @tags = Tag.all
    @article_tags = ArticleTag.all
  end

  def show
    @article = Article.find(params[:id])
    @tags = Tag.all
    @article_tags = ArticleTag.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = 'New Article Added!'
      redirect_to new_article_tag_path
    else
      flash[:alert] = 'New Article Not Created'
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
    @article_tag = ArticleTag.all
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:notice] = 'Article Updated!'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])

    if @article.destroy
      flash[:notice] = 'Article has been deleted.'
      redirect_to new_article_path
    end
  end

  private

  def article_params
    params.require(:article).permit(
      :title,
      :author,
      :body,
      :picture,
      :url
    )
  end
end
