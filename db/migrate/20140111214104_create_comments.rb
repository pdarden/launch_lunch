class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :dish_id, null: false
      t.text :body, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
