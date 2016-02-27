class CreateUserBorrowers < ActiveRecord::Migration
  def change
    create_table :user_borrowers do |t|
      t.string :name
      t.date :registered_date
      t.integer :status
      t.references :identity_type, index: true, foreign_key: true, default: 1
      t.string :identity_no

      t.timestamps null: false
    end
  end
end
