class CreateShipments < ActiveRecord::Migration[6.1]
  def change
    create_table :shipments do |t|
      t.string :length
      t.string :width
      t.string :height
      t.string :volume
      t.string :departure
      t.string :destination
      t.float :price
      t.float :distance
      t.timestamps
    end
  end
end
