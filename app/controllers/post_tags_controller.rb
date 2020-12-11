# frozen_string_literal: true

class PostTagsController < ApplicationController
  def index
    @post_tags = PostTag.all
  end

  def show
    @post_tag = PostTag.find(params[:id])
  end

  def new
    @post_tag = PostTag.new
  end

  def create
    @post_tag = PostTag.new(post_tag_params)
    if @post_tag.save
      flash[:notice] = 'New postTag Added!'
      redirect_to new_post_tag_path
    else
      flash[:alert] = 'New PostTag Not Created'
      render :new
    end
  end

  def edit
    @post_tag = PostTag.find(params[:id])
  end

  def update
    @post_tag = PostTag.find(params[:id])
    if @post_tag.update_attributes(post_tag_params)
      flash[:notice] = 'PostTag Updated!'
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post_tag = PostTag.find(params[:id])

    if @post_tag.destroy
      flash[:notice] = 'Post Tag has been deleted.'
      redirect_to edit_post_path(@post_tag.post_id)
    end
  end

  private

  def post_tag_params
    params.require(:post_tag).permit(
      :tag_id,
      :post_id
    )
  end
end
