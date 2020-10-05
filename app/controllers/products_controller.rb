class ProductsController < ApplicationController
	before_action :find_product, only: :show

	def index
		@products = Product.all
	end	
	def show
		@comment = current_user.comments.build
		@comments = @product.comments
	end
	
	private
	def find_product
		@product = Product.find_by id: params[:id]
		if @product.nil?
			redirect_to root_url
		end
	end			
end
