class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :firstName
      t.string :lastName
      t.string :city
      t.boolean :admin, default: false

      t.timestamps
    end
    add_index :users, :username
  end
end