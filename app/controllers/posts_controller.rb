class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @new_post = Post.new(title: params[:title], description: params[:description])
    @new_post.save
    redirect_to post_path(@new_post)
  end

end
