class Admin::UsersController < Admin::ApplicationController
	def index
		@users =User.all
		
	end
	def show
		@user = User.find_by(id: params[:id])
		
		if @user.nil?

			flash[:danger] = t ".not_found_user"
			render 'index'
		else

			@orders = @user.orders.paginate(:page => params[:page], :per_page => Settings.limit_user_orders)	
			@comments = @user.comments.paginate(:page => params[:page], :per_page => Settings.limit_user_comments)	
			@type = params[:type]
		end 
	end
	
	def index
		@users = User.all.order_by_time.paginate(:page => params[:page], :per_page => Settings.limit_user)	
	end	

end	