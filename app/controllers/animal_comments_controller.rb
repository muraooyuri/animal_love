class AnimalCommentsController < ApplicationController
  
  before_action :authenticate_user!
  
  def create
    @animal = Animal.find(params[:animal_id])
    animal_comments = current_user.animal_comments.new(animal_comment_params)
    animal_comments.animal_id = @animal.id
    animal_comments.save
    redirect_to animal_path(@animal)
  end

  def destroy
    @animal = Animal.find(params[:animal_id])
    @animal_comment = AnimalComment.find_by(id: params[:id], animal_id: params[:animal_id])
    @animal_comment.destroy
    redirect_to animal_path(@animal)
  end



  private

    def animal_comment_params
      params.require(:animal_comment).permit(:comment)
    end
end
