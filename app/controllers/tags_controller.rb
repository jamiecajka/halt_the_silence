class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = 'New Tag Added!'
      redirect_to new_article_tag_path
    else
      flash[:alert] = 'New Tag Not Created'
      render :new
    end
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update_attributes(tag_params)
      flash[:notice] = 'Tag Updated!'
      redirect_to articles_path
    else
      render 'edit'
    end
  end
end
