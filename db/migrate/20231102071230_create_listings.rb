class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :pickup_location
      t.string :dropoff_location
      t.float :distance
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
