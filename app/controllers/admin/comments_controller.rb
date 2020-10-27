class Admin::CommentsController < Admin::ApplicationController
	
	def index
		if params[:val] == "oldest"           
			@comments = Comment.all.paginate(:page => params[:page], :per_page => Settings.limit_comments)
		else 
			@comments = Comment.all.order_by_time.paginate(:page => params[:page], :per_page => Settings.limit_comments)
		end
	end	
end	