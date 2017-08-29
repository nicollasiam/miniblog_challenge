class PostsController < ApplicationController
  # Skips authentication on index and show pages
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = policy_scope(Post).page params[:page]
  end

  def show
    @post = policy_scope(Post).find(params[:id])
    authorize(@post)
  end

  def new
    @post = Post.new
    authorize(@post)
  end

  def create
    @post = Post.new(post_params)
    authorize(@post)
  end

  private

  def post_params
    params.require(:post).permit(:tile, :content)
  end
end
