class AddContentToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :content, :string
  end
end
