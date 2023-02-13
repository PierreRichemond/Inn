ActiveAdmin.register ActivitiesTranslation do
  permit_params :activity_id, :locale, :field_name, :text

  form do |f|
    f.inputs do
      f.input :activity_id, :as => :select, :collection => Activity.all.pluck(:address, :id)
      f.input :locale, :as => :select, :collection => ActivitiesTranslation::LOCALES, null: false
      f.input :field_name
      f.input :text
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :activity_id, :locale, :field_name, :text
  #
  # or
  #
  # permit_params do
  #   permitted = [:activity_id, :locale, :field_name, :text]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
