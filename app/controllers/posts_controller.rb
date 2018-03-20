class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end


private

  def set_posts
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
