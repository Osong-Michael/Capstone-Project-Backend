class ApplicationController < ActionController::Base
  before_action :set_current_user
  skip_before_action :verify_authenticity_token

   def set_current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
