class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :start_date, presence: true
  validates :end_date, presence: true
  monetize :amount_cents

  validate :cannot_overlap
  validate :end_date_past_start_date

  def end_date_past_start_date
    return true unless (end_date && start_date) && (end_date <= start_date)

    errors.add(:start_date, "Start date needs to be before end date.")
  end

  def cannot_overlap
    return true unless overlap?

    errors.add(:start_date, "Dates overlap with another booking, change your dates")
  end

  def overlap?
    if id
      return Booking.where("id != ?", id)
                    .where("room_id = ?", room.id)
                    .where("end_date >= #{start_date} AND start_date <= #{end_date}")
                    .any?
    end

    Booking.where("room_id = ?", room.id)
           .where("end_date >= #{start_date} AND start_date <= #{end_date}")
           .any?
  end
end
