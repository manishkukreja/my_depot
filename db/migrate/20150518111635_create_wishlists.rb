class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :category_id
      t.date :insert_date

      t.timestamps
    end
  end
end
