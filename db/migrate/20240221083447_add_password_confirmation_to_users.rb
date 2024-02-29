class AddPasswordConfirmationToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :confirmPassword, :string
  end
end
