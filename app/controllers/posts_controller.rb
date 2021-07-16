class PostsController < ApplicationController

  before_action :get_post, only: [:edit, :update, :show, :destroy]

  def index
    @posts = Post.all
  end

  def show

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(filter_params)
    if(@post.save)
      redirect_to posts_path, success: 'Publication créé avec succes'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @post.update(filter_params)
      redirect_to post_path(@post.id), success: "Publication modifié avec succes"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "Publication supprimer avec succes"
  end


  private 
  def get_post
    @post = Post.find(params[:id])
  end

  def filter_params
    params.require(:post).permit(:title, :content)
  end

end

