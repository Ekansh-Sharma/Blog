class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.new
  end

  def create
    @post = Post.new(post: safe_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def safe_params
    params.require(:post)
  end
end
