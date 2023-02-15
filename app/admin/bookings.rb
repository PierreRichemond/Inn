ActiveAdmin.register Booking do
permit_params :start_date, :end_date, :room_id, :amount_cents

  index do
    selectable_column
    id_column
    column "Room" do |rooms_translation|
      link_to rooms_translation.room.name, admin_room_path(rooms_translation.room) if rooms_translation.room
    end
    column :amount_cents
    column :start_date
    column :end_date

    actions
  end

  filter :start_date
  filter :end_date

  form do |f|
    f.inputs do
      f.input :room_id, :as => :select, :collection => Room.all.pluck(:name, :id), null: false
      f.input :amount_cents
      f.input :start_date, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}

      f.input :end_date, :as => :string, :input_html => {:class => 'datepicker hasDatePicker'}
    end
    f.actions
  end
end
