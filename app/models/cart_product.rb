class CartProduct < ApplicationRecord
	belongs_to :cart
	belongs_to :product_detail
end
