class CreateRoomsTranslations < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms_translations do |t|
      t.integer :room_id
      t.string :locale
      t.string :field_name
      t.string :text

      t.timestamps
    end
  end
end
