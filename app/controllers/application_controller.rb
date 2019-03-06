class ApplicationController < ActionController::Base

  before_action :setup

  def setup
    @errors = flash[:errors]
    @message = flash[:message]
    @logged_in = session[:user_id] != nil
  end

end
