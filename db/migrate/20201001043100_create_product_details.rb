class CreateProductDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_details do |t|
      t.string :color
      t.integer :price
      t.integer :size
      t.string :material
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
