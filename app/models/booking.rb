class Booking < ApplicationRecord
  belongs_to :user
  has_many :listings
end
