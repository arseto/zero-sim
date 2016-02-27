class CreateDocStatuses < ActiveRecord::Migration
  def change
    create_table :doc_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
