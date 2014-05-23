class SessionsController < ApplicationController
  def new
  end

  # SIGN IN
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "you successfully signed in"
    else
      flash.now[:alert] = "Invalid Login Credentials" 
      render :new
    end  
  end

  # SIGN OUT
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "logged out!"
  end
end

