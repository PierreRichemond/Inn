ActiveAdmin.register Room do
  permit_params :name, :price_cents, rooms_translations_attributes: [ :id, :locale, :field_name, :text, :_destroy ]

  index do
    selectable_column
    id_column
    column :name
    column :price_cents
    actions
  end

  filter :price

  form do |f|
    f.inputs do
      f.input :name
      f.input :price_cents

      f.inputs "rooms_translations" do
        f.has_many :rooms_translations, heading: false, allow_destroy: true do |room_t|
          room_t.input :locale, :as => :select, :collection => RoomsTranslation::LOCALES, null: false
          room_t.input :field_name
          room_t.input :text
        end
      end
    end
    f.actions
  end
end
