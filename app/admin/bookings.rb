ActiveAdmin.register Booking do
permit_params :start_date, :end_date, :room_id, :amount_cents

  scope :all
  scope :past_booking
  scope :upcomming_booking

  index do
    selectable_column
    id_column
    column :room_id
    column :amount_cents
    column :start_date
    column :end_date

    actions
  end

  filter :price

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
