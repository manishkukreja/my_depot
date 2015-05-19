class AddColumnPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :price, :float
    remove_column :products , :prise
  end
end
