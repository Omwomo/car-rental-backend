class AddItemIdToReservations < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :item_id, :bigint, null: false
    add_foreign_key :reservations, :items
  end
end
