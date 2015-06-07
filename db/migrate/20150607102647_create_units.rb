class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.integer :product_id
      t.integer :order_id
      t.float :netto_price
      t.float :vat
      t.timestamp :sold_at

      t.timestamps null: false
    end
  end
end
