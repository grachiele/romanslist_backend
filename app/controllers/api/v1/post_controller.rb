class Api::V1::PostController < ApplicationController

  def create
    @post = Post.new(user_params)
    if @post.save
      render json: @post, status:200
    else
      render json: {messages: @post.errors.full_messages}
    end

  end

  def 

  private

  def user_params
    params.require(:post).permit(:user_id, :category_id, :location_id, :title, :description)
  end

end
