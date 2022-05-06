class RenameUserIconColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :user_icon, :profile_image
  end
end
