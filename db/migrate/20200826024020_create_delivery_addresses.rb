class CreateDeliveryAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_addresses do |t|
      t.references :item, null: false, foreign_key: true
      t.string :zip_code
      t.integer :prefecture
      t.string :city
      t.string :address1
      t.string :address2
      t.string :phone_number

      t.timestamps
    end
  end
end
