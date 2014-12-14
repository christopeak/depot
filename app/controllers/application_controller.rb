class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	
	helper_method :time #added this in an attempt to make @time accessible from applicaiton.html.erb.
	
	before_action :time
	
	def time
		@time = Time.now
	end
end
