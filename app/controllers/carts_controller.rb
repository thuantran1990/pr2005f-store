class CartsController < ApplicationController
	def show
		@hash_content = current_cart.content
		
	end
end
