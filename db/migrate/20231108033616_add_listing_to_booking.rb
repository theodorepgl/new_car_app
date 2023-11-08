class AddListingToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :listing, index:true, null:false
  end
end
