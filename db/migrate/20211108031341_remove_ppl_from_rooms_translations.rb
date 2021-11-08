class RemovePplFromRoomsTranslations < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms_translations, :ppl, :string
  end
end
