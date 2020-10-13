class ProductsChangeClassifyString < ActiveRecord::Migration[6.0]
    def up
        change_column :products, :classify, :interger
        change_column :products, :product_type, :interger
    end

    def down
        change_column :products, :classify, :string 
        change_column :products, :product_type, :string 
    end
end
