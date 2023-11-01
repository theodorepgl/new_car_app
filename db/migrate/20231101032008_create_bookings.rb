class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :car_type
      t.datetime :pickup_datetime
      t.string :pickup_location
      t.string :dropoff_location
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
