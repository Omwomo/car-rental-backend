class AddRemainingColumnsToItems < ActiveRecord::Migration[7.1]
  def change
    # daily_rental_fee
    add_column :items, :financeFee, :decimal, precision: 10, scale: 2
    # insurance_fee
    add_column :items, :purchaseFee, :decimal, precision: 10, scale: 2
    add_column :items, :totalAmount, :decimal, precision: 10, scale: 2
    add_column :items, :duration, :integer
    # Annual Percentage Rate (APR) 
    add_column :items, :apr, :decimal, precision: 5, scale: 2
  end
end
