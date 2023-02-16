ActiveAdmin.register Room do
  permit_params :name, :price_cents, :images => [], images_attributes: [:_destroy], rooms_translations_attributes: [ :id, :locale, :field_name, :text, :_destroy ]

  controller do
    def update
      super
      # @room.images_attributes(params[:room][:images_attributes])
      @room.image.attach(params[:room][:images]) if params[:room][:image].present?
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
      f.input :images, as: :file, input_html: { multiple: true }, allow_destroy: true, :label => 'Room images'

      # if f.object.images.present?
      #   f.semantic_fields_for :images do |image|
      #     image.input :_destroy, as: :boolean, label: "Delete #{image.object.filename}?"
      #   end
      # end

      f.inputs "rooms_translations" do
        f.has_many :rooms_translations, heading: false, allow_destroy: true do |room_t|
          room_t.input :locale, :as => :select, :collection => RoomsTranslation::LOCALES, null: false
          room_t.input :field_name, :as => :select, :collection => RoomsTranslation::FIELDS, null: false
          room_t.input :text
        end
      end
    end
    f.actions
  end
end
