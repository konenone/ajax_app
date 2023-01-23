class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #コメントアウトする
  # def new
  # end

  def create
    Post.create(contnt: params[:content])
    redirect_to action: :index
  end

end
