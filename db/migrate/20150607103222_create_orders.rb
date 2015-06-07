class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :employee_id
      t.integer :status_id
      t.integer :shipment_id
      t.integer :payment_id
      t.string :redeem_code
      t.float :cost
      t.text :extra_info

      t.timestamps null: false
    end
  end
end
