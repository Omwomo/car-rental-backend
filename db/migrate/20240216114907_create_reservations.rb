class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :customer, null: false, foreign_key: { to_table: 'users' }
      t.date :reserveForUseDate
      t.string :city

      t.timestamps
    end
  end
end