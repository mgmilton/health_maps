class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: user_params[:email]) || User.from_omniauth(request.env["omniauth.auth"])
    if user && user.authenticate(user_params[:password])
      session[:user_id] = user.id
      flash[:success]  = "Logged in as #{user.name}"
      redirect_to root_path
    elsif User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to root_path
    elsif user.nil?
      flash[:warning] = "Incorrect login credentials!"
      render :_new
    end
  end

  def destroy
    session.destroy
    flash[:success] = "Successfully Logged Out"
    redirect_to root_path
  end

  private

    def user_params
      params.permit(:email, :password)
    end

end
