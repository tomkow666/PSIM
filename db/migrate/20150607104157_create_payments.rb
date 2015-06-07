class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :method
      t.boolean :is_complete
      t.float :amount

      t.timestamps null: false
    end
  end
end
