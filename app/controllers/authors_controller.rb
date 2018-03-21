class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      flash[:error] = @author.errors.full_messages
      # redirect_to new_author_path
      render :new
    end

  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.valid?
      @author.update(author_params)
      redirect_to authors_path
    else
      flash[:error] = @author.errors.full_messages
      # redirect_to edit_author_path
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
