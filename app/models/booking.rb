class Booking < ApplicationRecord
  belongs_to :room
  validates :start_date, presence: true
  validates :end_date, presence: true

  def available
  end


  def start_time
    self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  end
end
