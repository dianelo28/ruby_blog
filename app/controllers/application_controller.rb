class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :require_login

  def current_user
  	@current_user ||= User.find_by(id: session[:user_id])
  end


  before_action :require_login, only: [:show]


	def require_login
	  unless current_user
	    redirect_to login_path
	  end
	end


end
