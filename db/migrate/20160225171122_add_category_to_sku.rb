class AddCategoryToSku < ActiveRecord::Migration
  def change
    add_reference :skus, :category, index: true, foreign_key: true, default: 1
  end
end
