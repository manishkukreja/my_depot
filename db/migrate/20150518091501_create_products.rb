class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.float :prise
      t.integer :quantity
      t.integer :category
      t.boolean	:active
      t.timestamps
    end
  end
end
