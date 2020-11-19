class Bunker < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :bookings
  has_many :reviews
  has_one_attached :photo
  belongs_to :user
  has_one_attached :photo
  validates :name, :price, :description, :capacity, :address, presence: true
end
