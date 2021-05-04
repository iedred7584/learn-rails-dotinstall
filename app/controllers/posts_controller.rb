class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: "desc")
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    post = Post.new(post_params)
    post.save

    redirect_to root_path
  end

  private

  def post_params
    params.permit(:title, :body)
  end
end
