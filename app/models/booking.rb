class Booking < ApplicationRecord
  belongs_to :room
  validates :start_date, presence: true
  validates :end_date, presence: true
end
