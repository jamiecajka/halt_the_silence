# frozen_string_literal: true

class ArticleTagsController < ApplicationController
  before_action :authorize_user, except: [:show, :index]
  def index
    @article_tags = ArticleTag.all
  end

  def show
    @article_tag = ArticleTag.find(params[:id])
  end

  def new
    @article_tag = ArticleTag.new
  end

  def create
    @article_tag = ArticleTag.new(article_params)
    if @article_tag.save
      flash[:notice] = 'New ArticleTag Added!'
      redirect_to @article_tag
    else
      flash[:alert] = 'New ArticleTag Not Created'
      render :new
    end
  end

  def edit
    @article_tag = ArticleTag.find(params[:id])
  end

  def update
    @article_tag = ArticleTag.find(params[:id])
    if @article_tag.update_attributes(article_tag_params)
      flash[:notice] = 'ArticleTag Updated!'
      redirect_to @article_tag
    else
      render 'edit'
    end
  end

  def destroy
    @article_tag = ArticleTag.find(params[:id])

    if @article_tag.destroy
      flash[:notice] = 'Article has been deleted.'
      redirect_to new_article_tag_path
    end
  end

  private

  def article_params
    params.require(:article_tag).permit(
      :tag
    )
  end
end
