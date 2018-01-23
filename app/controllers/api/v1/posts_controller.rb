class Api::V1::PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts, status:200
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render json: @post, status: 200
    else
      render json: {messages: @post.errors.full_messages}
    end

  end

  def show
    ## come back to do specific message on post that does not exist.
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :category_id, :location_id, :title, :description)
  end

end
