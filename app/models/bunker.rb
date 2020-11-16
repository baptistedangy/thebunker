class Bunker < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
  validates :name, :price, :description, :capacity, :address, :photo, presence: true
end
