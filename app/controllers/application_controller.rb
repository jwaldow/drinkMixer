class ApplicationController < ActionController::Base
  #before_filter :authorize
  protect_from_forgery
  helper_method :current_user

  protected

	def authorize
		unless User.find_by_id(session[:user_id])
			redirect_to root_url, :notice => "Please log in"
		end
	end

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

end
