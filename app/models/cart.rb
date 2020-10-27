class Cart < ApplicationRecord
	has_many :cart_products
	has_many :product_details, through: :cart_products
	serialize :content, JSON
	belongs_to :user

	
end
