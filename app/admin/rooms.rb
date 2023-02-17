ActiveAdmin.register Room do
  permit_params :name, :price_cents, :images => [], rooms_translations_attributes: [ :id, :locale, :field_name, :text, :_destroy ]

  controller do
    def update
      super
      @room.images.attach(params[:room][:images]) if params[:room][:images]
    end
  end

  index do
    selectable_column
    id_column
    column :name
    column :price_cents
    actions
  end

  show do
    attributes_table do
      row :images do
        div do
          room.images.each do |img|
            div do
              image_tag url_for(img), size: "400x400"
            end
          end
        end
      end

      row :name
      row :price_cents
    end
  end

  filter :price

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :name
      f.input :price_cents
      f.input :images, as: :file, input_html: { multiple: true }, :label => 'Replace Room images'
      if room.images.attached?
        room.images.each do |img|
          div do
            image_tag url_for(img.url), size: "400x400"
          end
        end
      end
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
