# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'New Post Added!'
      redirect_to new_post_path
    else
      flash[:alert] = 'New Post Not Created'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = 'Post Updated!'
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      flash[:notice] = 'Article has been deleted.'
      redirect_to edit_article_path(@post.article_id)
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :title,
      :author,
      :catagory,
      :body
    )
  end

end
