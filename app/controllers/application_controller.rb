class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def required_user_logged_in!
    redirect_to root_path, alert: 'You should login' if Current.user.nil?
  end
end
