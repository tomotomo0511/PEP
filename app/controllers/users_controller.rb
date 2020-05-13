class UsersController < ApplicationController

  def index
    @users = USer.includes(:user).order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create  
    User.create(user_params)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC").page(params[:page]).per(10)
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
  def user_params
    params.require(:user).permit(:backgrond_image).merge(user_id: current_user.id)
  end
end
