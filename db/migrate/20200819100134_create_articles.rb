class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :image, null: false
      t.string :item_name, null: false
      t.text :product, null: false
      t.integer :category, null: false
      t.integer :status, null: false
      t.integer :delivery_ree, null: false
      t.integer :delivery_area, null: false
      t.integer :delivery_days, null: false

      t.timestamps
    end
  end
end
