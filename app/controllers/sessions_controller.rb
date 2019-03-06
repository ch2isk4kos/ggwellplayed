class SessionsController < ApplicationController

  ###### LOGIN ######
  def new
  end

  def create
    byebug
    @user = User.find_by(params[:session][:username])
    byebug
    redirect_to user_path(@user)
  end

  ###### LOGOUT ######
  def destroy
  end
end
