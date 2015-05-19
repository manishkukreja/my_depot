class AddColumnCategoryIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :integer
    remove_column :products , :category
  end
end
