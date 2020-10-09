class Admin::ApplicationController < ActionController::Base
    layout "admin/application"
    before_action :check_login
  	before_action :require_admin
	
  	private
	def check_login
	 	if user_signed_in? 
	 		flash[:danger] = "you are logging"
	 	else
	 		redirect_to root_url
	 	end
	end 	

	def require_admin
		unless current_user.admin?
		  redirect_to static_pages_home_path
		end
	end
  
end