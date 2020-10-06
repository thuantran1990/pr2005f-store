class CreateAddContentToCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :add_content_to_carts do |t|
      t.string :content

      t.timestamps
    end
  end
end
