class ApplicationController < ActionController::Base
    helper_method :current_user, :admin?
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def admin?
      current_user&.admin?
    end
  
    def authenticate_admin!
      redirect_to root_path, alert: "You must be an admin to access this page" unless admin?
    end
  end
  