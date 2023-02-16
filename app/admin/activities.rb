ActiveAdmin.register Activity do
  permit_params :name, :address, :lng, :lat, :phone, :price, :url, :distance, :image,:tag_ids => [], activities_translations_attributes: [ :id, :locale, :field_name, :text, :_destroy ]

  controller do
    def update
      super
      @activity.image.attach(params[:activity][:image]) if params[:activity][:image].present?
      @activity = Activity.find(params[:id])
      @activity.set_tag(params[:activity][:tag_ids])
    end
  end

  scope :all
  scope :culture
  scope :catering
  scope :business
  scope :leisure
  scope :vineyards
  scope :caterer
  scope :gaz_station

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
    column :tags

    actions
  end

  show do
    attributes_table do
      row :name
      row :address
      row :lng
      row :lat
      row :price
      row :phone
      row :url
      row :distance
      row :tags
      if activity.image.any?
        row :image do
          div do
            image_tag url_for(activity.image), size: "800x800"
          end
        end
      end
    end
  end

  filter :price

  form :html => { :enctype => "multipart/form-data" } do |f|
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
      f.input :tags,  # Show all tags AND checked already selected one (by relations through :tags - input must named :tags)
        as: :select,
        multiple: :true,
        collection: ActsAsTaggableOn::Tag.select { |i| i.id.odd? }.pluck(:name, :id)

      f.input :image, as: :file, :label => 'Activity image'
    end

    f.inputs "activities_translations" do
      f.has_many :activities_translations, heading: false, allow_destroy: true do |room_t|
        room_t.input :locale, :as => :select, :collection => ActivitiesTranslation::LOCALES, null: false
        room_t.input :field_name, :as => :select, :collection => ActivitiesTranslation::FIELDS, null: false
        room_t.input :text
      end
    end
    f.actions
  end
end
