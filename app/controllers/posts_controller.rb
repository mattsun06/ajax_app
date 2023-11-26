class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #非同期通信のため不要
  # def new
  # end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
