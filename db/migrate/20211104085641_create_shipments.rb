class CreateShipments < ActiveRecord::Migration[6.1]
  def change
    create_table :shipments do |t|
      t.integer :length
      t.integer :width
      t.integer :height
      t.integer :volume
      t.integer :price
      t.integer :distance
      t.string :departure
      t.string :destination
      t.timestamps
    end
  end
end
