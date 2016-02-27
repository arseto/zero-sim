class CreateReceivingDetails < ActiveRecord::Migration
  def change
    create_table :receiving_details do |t|
      t.references :receiving, index: true, foreign_key: true
      t.references :sku, index: true, foreign_key: true
      t.integer :qty
      t.decimal :unit_price
      t.decimal :subtotal_price

      t.timestamps null: false
    end
  end
end
