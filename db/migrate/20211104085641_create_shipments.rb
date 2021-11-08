class CreateShipments < ActiveRecord::Migration[6.1]
  def change
    create_table :shipments do |t|
      t.float :length
      t.float :width
      t.float :height
      t.float :volume
      t.float :price
      t.integer :distance
      t.string :departure
      t.string :destination
      t.timestamps
    end
  end
end
