class CreateSkus < ActiveRecord::Migration
  def change
    create_table :skus do |t|
      t.string :name
      t.string :description
      t.string :sku_code
      t.references :manufacturer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
