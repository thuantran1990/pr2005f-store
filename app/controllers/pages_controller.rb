class PagesController < ApplicationController
	def index

  		@products = Product.all.includes([:image_attachments]).order_by_time.paginate(page: params[:page], :per_page => 9)
  		@product_details = ProductDetail.includes(:product).all  
  				
	end
	
end
