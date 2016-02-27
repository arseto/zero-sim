class AddDocStatusToReceiving < ActiveRecord::Migration
  def change
    add_reference :receivings, :doc_status, index: true, foreign_key: true, default: 1
  end
end
