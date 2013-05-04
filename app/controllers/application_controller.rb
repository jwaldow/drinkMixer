class ApplicationController < ActionController::Base
  #before_filter :authorize
  protect_from_forgery
  helper_method :current_user, :current_cabinet, :random_joke

  protected

	def authorize
		unless User.find_by_id(session[:user_id])
			redirect_to root_url, :notice => "Please log in"
		end
	end

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def current_cabinet
    current_user ? current_user.cabinet : nil
  end

  def random_joke
    Joke.find(:one, :from => "/jokes/random")
  end
end
