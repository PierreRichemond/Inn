class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :start_date, presence: true
  validates :end_date, presence: true
  monetize :amount_cents

  scope :upcomming_booking, -> { Booking.all.where("end_date >= ?", Date.today) }
  scope :past_booking, -> { Booking.all.all.where("end_date < ?", Date.today) }
end
