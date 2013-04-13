class ApplicationController < ActionController::Base
  #before_filter :authorize
  protect_from_forgery

  private

  	def current_cabinet
  		Cabinet.find(session[:cart_id])
  	rescue ActiveRecord::RecordNotFound
  		cabinet = Cabinet.create
  		session[:cabinet_id] = cabinet.id 
  		cabinet
  	end

  protected
	def authorize
		unless User.find_by_id(session[:user_id])
			redirect_to root_url, :notice => "Please log in"
		end
	end
end
