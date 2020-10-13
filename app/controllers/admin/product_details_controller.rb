class Admin::ProductDetailsController < Admin::ApplicationController
	
	def index		
		@product = Product.find_by id: params[:product_id]
		@product_details = @product.product_details
		if @product_details.empty?
			flash[:danger] = 'Không có chi tiết sản phẩm nào được tìm thấy'
			render 'index'
		end

	end

	def edit		
		@product_detail = ProductDetail.find_by id: params[:id]
		if @product_detail.nil?
			flash[:danger] = 'Không có chi tiết sản phẩm nào được tìm thấy'
			render 'index'
		end
	end

end
 
 