class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bunker
  validates :nb_participants, :start_date, :end_date, presence: true
end
