class CreateReceivings < ActiveRecord::Migration
  def change
    create_table :receivings do |t|
      t.string :doc_no
      t.date :receiving_date
      t.string :ref_doc_no

      t.timestamps null: false
    end
  end
end
