class ApplicationController < ActionController::Base

  before_action :setup

  def setup
    @errors = flash[:errors]
    @message = flash[:message]
  end
  
end
