class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :phone_number
      t.string :fullname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
