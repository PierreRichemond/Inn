class Booking < ApplicationRecord
  belongs_to :room
  validates :start_day, presence: true
  validates :end_day, presence: true
end
