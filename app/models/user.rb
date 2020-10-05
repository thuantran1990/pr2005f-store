class User < ApplicationRecord
	has_many :orders
	has_many :comments
	has_many :sub_comments
	has_many :order_details, through: :orders
end
