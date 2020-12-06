class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Account was successfully created'
      redirect_to current_user_path
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      flash[:notice] = 'User has been deleted.'
      redirect_to new_user_path
    end
  end
end
