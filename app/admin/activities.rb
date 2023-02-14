ActiveAdmin.register Activity do
  permit_params :name, :address, :lng, :lat, :phone, :price, :url, :distance, rooms_translations_attributes: [ :id, :locale, :field_name, :text, :_destroy ]

  index do
    selectable_column
    id_column
    column :name
    column :address
    column :lng
    column :lat
    column :price
    column :phone
    column :url
    column :distance

    actions
  end

  filter :price

  form do |f|
    f.inputs do
      f.input :name
      f.input :price
      f.input :phone
      f.input :url

      f.latlng lang: :fr, height: 500, default_lng: activity.lng || 0.8190269000, default_lat: activity.lat || 47.5227350000, api_key: ENV["GOOGLE_API_KEY"]
      f.input :lat
      f.input :lng
      f.input :address
      f.input :distance
    end

    f.inputs "activities_translations" do
      f.has_many :activities_translations, heading: false, allow_destroy: true do |room_t|
        room_t.input :locale, :as => :select, :collection => ActivitiesTranslation::LOCALES, null: false
        room_t.input :field_name
        room_t.input :text
      end
      f.actions
    end
  end
end
