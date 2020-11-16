class Review < ApplicationRecord
  belongs_to :user
  belongs_to :bunker
  validates :rating, presence: true
end
