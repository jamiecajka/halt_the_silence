# frozen_string_literal: true

class TagsController < ApplicationController
  def new
    @tag = Tag.new
    @prev_url = request.referer
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      flash[:notice] = 'New Tag Added!'
      redirect_to current_user
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
      redirect_to current_user
    else
      render 'edit'
    end
  end

  private

  def tag_params
    params.require(:tag).permit(
      :tag
    )
  end
end
