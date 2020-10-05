class Product < ApplicationRecord
	has_many :order_details
	has_many :product_details
	has_many :comments
end
