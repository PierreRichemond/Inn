class AddPplToRoomsTranslations < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms_translations, :ppl, :string
  end
end
