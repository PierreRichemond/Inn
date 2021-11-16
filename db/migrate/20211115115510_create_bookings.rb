class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :state
      t.string :room_name
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
