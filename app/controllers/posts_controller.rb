class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
      # render :posts
    else
      flash[:error] = @post.errors.full_messages
      # redirect_to new_post_path
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      # @post.update(post_params)
      redirect_to post_path
      # render :posts
    else
      flash[:error] = @post.errors.full_messages
      # redirect_to edit_post_path
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
