class PostsController < ApplicationController
  # Skips authentication on index and show pages
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = policy_scope(Post)
  end

  def show
  end

  def new
  end

  def create
  end
end
