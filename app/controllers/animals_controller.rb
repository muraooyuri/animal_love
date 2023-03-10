class AnimalsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @animal = Animal.new
  end

  def index
    @user = current_user
  end

  def show
    @animal = Animal.find(params[:id])
    @animal_comment = AnimalComment.new
    @animal_comments = @animal.id
    @user = @animal.user
  end

  def edit
  end
  
  private

  def touken_params
    params.require(:animal).permit(:title, :body,, :genre_id)
  end
end
