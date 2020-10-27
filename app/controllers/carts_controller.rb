class CartsController < ApplicationController

	def index
		@hash_content = current_cart.content
	end

	def show
		
	end
end
