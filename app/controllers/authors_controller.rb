class AuthorsController < ApplicationController
  # , , edit, , and update
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    # @ author = Author.create(author_params)
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author=Author.find(params[:id])
  end

  def update
    @author=Author.find(params[:id])
    if @author.update(author_path)#update if match
      redirect_to author_path# redriect
    else#else render
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
