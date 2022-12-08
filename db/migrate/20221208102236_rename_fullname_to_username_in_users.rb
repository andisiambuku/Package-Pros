class RenameFullnameToUsernameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column(:users, :fullname, :username)
  end
end
