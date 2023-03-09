class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_guest_user, only: [:edit]
  
  def index
    @user = current_user
    @genres = Genre.all
  end

  def show
    @user = User.find(params[:id])
    @genres = Genre.all
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user)
    end
  end
end
