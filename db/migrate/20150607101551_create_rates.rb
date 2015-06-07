class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :product_id
      t.integer :client_id
      t.integer :rate

      t.timestamps null: false
    end
  end
end
