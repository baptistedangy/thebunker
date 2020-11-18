class Bunker < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_one_attached :photo
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :description, :capacity, :address, presence: true
end
