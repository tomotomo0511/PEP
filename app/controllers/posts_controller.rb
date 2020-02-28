class PostsController < ApplicationController
  before_action :set_post1, only: [:show, :edit]
  def index
    @posts = Post.includes(:user)
  end

  def new
    @post = Post.new
  end

  def create  
    Post.create(post_params)
  end

  def show
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  def set_post1
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :image, :content).merge(user_id: current_user.id)
  end
end
