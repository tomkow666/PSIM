class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :payment_method_id
      t.boolean :is_complete
      t.float :amount

      t.timestamps null: false
    end
  end
end
