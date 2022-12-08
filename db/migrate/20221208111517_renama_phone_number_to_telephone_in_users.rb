class RenamaPhoneNumberToTelephoneInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column(:users, :phone_number, :telephone)
  end
end
