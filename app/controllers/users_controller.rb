class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Successfully logged in!"
      redirect_to '/'
    else
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :password, :password_confirmation, :location)
    end

end
