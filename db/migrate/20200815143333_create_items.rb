class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :image
      t.string :item_name
      t.string :product
      t.integer :category
      t.integer :status
      t.integer :delivery_fee
      t.integer :delivery_area
      t.integer :delivery_day
      t.string :price
      t.timestamps
    end
  end
end
