class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name, null: false
      t.integer :price_in_cents
      t.integer :restaurant_id, null: false
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end
end
