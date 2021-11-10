class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :room_id
      t.date :start_day
      t.date :end_day

      t.timestamps
    end
  end
end
