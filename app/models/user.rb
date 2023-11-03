class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
         
  has_many :bookings, dependent: :destroy

  enum :role, { customer: 0, admin: 1 }

  def is_admin?
    role == 'admin'
  end

  def is_customer?
    role == 'customer'
  end
end
