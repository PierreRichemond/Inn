class RenameModelPreviewBooking < ActiveRecord::Migration[6.1]
  def change
    rename_table :booking_previews, :booking_attempts
  end
end
