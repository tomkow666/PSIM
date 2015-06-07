class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.integer :vendor_id
      t.string :name
      t.float :netto_price
      t.float :vat
      t.text :description

      t.timestamps null: false
    end
  end
end
