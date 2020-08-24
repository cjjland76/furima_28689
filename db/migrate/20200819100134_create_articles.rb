class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :image, null: false
      t.string :item_name, null: false
      t.text :product, null: false
      t.integer :category_id, null: false
      t.integer :status_id, null: false
      t.integer :delivery_ree_id, null: false
      t.integer :delivery_area_id, null: false
      t.integer :delivery_day_id, null: false

      t.timestamps
    end
  end
end
