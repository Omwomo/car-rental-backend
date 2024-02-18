class AddRemainingColumnsToItems < ActiveRecord::Migration[7.1]
  def change
    # daily_rental_fee
    add_column :items, :finance_fee, :decimal, precision: 10, scale: 2
    # insurance_fee
    add_column :items, :option_to_purchase_fee, :decimal, precision: 10, scale: 2
    add_column :items, :total_amount_payable, :decimal, precision: 10, scale: 2
    add_column :items, :duration, :integer
    # Annual Percentage Rate (APR) 
    add_column :items, :apr_representative, :decimal, precision: 5, scale: 2
  end
end
