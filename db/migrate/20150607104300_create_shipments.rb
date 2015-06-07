class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :method
      t.float :price
      t.boolean :is_complete

      t.timestamps null: false
    end
  end
end
