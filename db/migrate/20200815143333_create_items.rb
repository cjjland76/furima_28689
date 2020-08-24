class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :item_name
      t.string :product
      t.integer :category_id
      t.integer :status_id
      t.integer :delivery_fee_id
      t.integer :delivery_area_id
      t.integer :delivery_day_id
      t.string :price
      
      t.timestamps
    end
  end
end
