class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column :parcels, :price
    remove_column :parcels, :status
  end
end
