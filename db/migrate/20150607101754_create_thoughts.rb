class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.integer :product_id
      t.integer :client_id
      t.text :body

      t.timestamps null: false
    end
  end
end
