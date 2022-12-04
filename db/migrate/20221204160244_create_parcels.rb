class CreateParcels < ActiveRecord::Migration[7.0]
  def change
    create_table :parcels do |t|
      t.integer :weight
      t.datetime :pickup_time
      t.integer :price
      t.datetime :recieved_at
      t.string :description
      t.string :pickup_address
      t.string :status
      t.string :present_location
      t.string :received_by

      t.timestamps
    end
  end
end
