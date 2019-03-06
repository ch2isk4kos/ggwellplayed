class SessionsController < ApplicationController

  ###### LOGIN ######
  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])
    byebug
    redirect_to user_path(@user)
  end

  ###### LOGOUT ######
  def destroy
  end
end
