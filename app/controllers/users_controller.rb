class UsersController < ApplicationController
  def index
    @user = User.all
  end
  
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @recipes = @user.recipes
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully created an account!"
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image, :specialty, :bio)
    end
end
