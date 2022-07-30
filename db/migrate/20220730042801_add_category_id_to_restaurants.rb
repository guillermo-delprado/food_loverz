class AddCategoryIdToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_column :restaurants, :category_id, :integer
  end
end
