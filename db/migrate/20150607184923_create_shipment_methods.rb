class CreateShipmentMethods < ActiveRecord::Migration
  def change
    create_table :shipment_methods do |t|
      t.string :name
      t.float :price

      t.timestamps null: false
    end
  end
end
