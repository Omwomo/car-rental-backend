class RenameAdminIdToAdminIdInItems < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :admin_id, :adminId
  end
end
