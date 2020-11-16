class Bunker < ApplicationRecord
  has_many :bookings, :reviews
  belongs_to :user
end
