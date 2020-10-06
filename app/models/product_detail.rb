class ProductDetail < ApplicationRecord
  belongs_to :product
  has_many :cart_products
  has_many :cart, through: :cart_products
   
end
