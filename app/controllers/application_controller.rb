class ApplicationController < ActionController::Base

  before_action :setup

  # Instance variables "@" are used to pass data to views
  def setup
    @errors = flash[:errors]
    @messages = flash[:messages]
    @logged_in = !!session[:user_id]

    if @logged_in
      @logged_in_user = User.find(session[:user_id])
    end
  end

  def login_user(user)
    session[:user_id] = user.id
  end

end
