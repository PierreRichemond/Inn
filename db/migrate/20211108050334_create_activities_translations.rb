class CreateActivitiesTranslations < ActiveRecord::Migration[6.1]
  def change
    create_table :activities_translations do |t|
      t.integer :activity_id
      t.string :locale
      t.string :field_name
      t.string :text

      t.timestamps
    end
  end
end
