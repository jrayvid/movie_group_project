class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.where(username: params[:username]).first
  	if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
  		redirect_to @user
  	else
      flash[:notice] = "Log In Unsuccessful!"
  		redirect_to login_path
  	end
  end

  def destroy
  	if 
      session.destroy
    else
      flash[:notice] = "Log Out Successful!"
      redirect_to '/'
    end

  end

end
