class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :start_day, :start_date
    rename_column :bookings, :end_day, :end_date
  end
end
