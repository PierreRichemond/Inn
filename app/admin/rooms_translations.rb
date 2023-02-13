ActiveAdmin.register RoomsTranslation do
  permit_params :room_id, :locale, :field_name, :text
  actions :index, :update, :edit, :destroy

  index do
    selectable_column
    id_column
    column "Room" do |rooms_translation|
      link_to rooms_translation.room.name, admin_room_path(rooms_translation.room) if rooms_translation.room
    end
    column :locale
    column :field_name
    column :text

    actions
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
