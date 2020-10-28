class AddDiscountToProductDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :product_details, :discount, :integer
  end
end
