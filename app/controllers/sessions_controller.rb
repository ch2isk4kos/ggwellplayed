class SessionsController < ApplicationController

  #-------- LOGIN --------#
  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      login_user(@user)
      redirect_to user_path(session[:user_id])
    else
      flash[:errors] = ["The username or password you entered was not correct."]
      redirect_to login_path
    end
  end
  #------------------------#

  #-------- LOGOUT --------#
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
  #------------------------#

end
