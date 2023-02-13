ActiveAdmin.register Activity do
  permit_params :address, :longitude, :latitude, :price, :url, :distance

  index do
    selectable_column
    id_column
    column :address
    column :longitude
    column :latitude
    column :price
    column :phone
    column :url
    column :distance

    actions
  end

  filter :price

  form do |f|
    f.inputs do
      f.input :address
      f.input :price
      f.input :phone
      f.input :url
      f.input :distance
    end

    f.activities_translations.each do |activities_translation|
      f.inputs do
        activities_translation.input :locale, :as => :select, :collection => RoomsTranslation::LOCALES, null: false
        activities_translation.input :field_name
        activities_translation.input :text
      end
    end
    f.actions
  end
end
