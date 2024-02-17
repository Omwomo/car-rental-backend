class AddAdditionalColumnsToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :rates_per_day, :integer
    add_column :items, :rates_per_hour, :integer
    add_column :items, :availability_status, :boolean
    add_column :items, :mileage, :string
    add_column :items, :fuel_type, :string
    add_column :items, :collision_cover, :boolean
  end
end
