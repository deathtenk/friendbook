class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if !session[:user_id].nil?
      User.find_by(id: session[:user_id])
    end
  end
  helper_method :current_user
end
