# frozen_string_literal: true

class ArticleTagsController < ApplicationController
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
    @article_tag = ArticleTag.new(article_tag_params)
    if @article_tag.save
      flash[:notice] = 'New ArticleTag Added!'
      redirect_to new_article_tag_path
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
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article_tag = ArticleTag.find(params[:id])

    if @article_tag.destroy
      flash[:notice] = 'Article has been deleted.'
      redirect_to edit_article_path(@article_tag.article_id)
    end
  end

  private

  def article_tag_params
    params.require(:article_tag).permit(
      :tag_id,
      :article_id
    )
  end
end
