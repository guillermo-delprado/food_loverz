class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :restaurants, :name, unique: true
  end
end
