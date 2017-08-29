class PostsController < ApplicationController
  # Skips authentication on index and show pages
  skip_before_action :authenticate_user!, only: [:index, :show]

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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
    @post.user = current_user

    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :head_title, :subtitle)
  end

  def user_not_authorized
    redirect_to(root_path)
  end
end
