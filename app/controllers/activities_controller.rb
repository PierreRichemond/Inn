class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @tags = if params[:locale] == 'en'
              Activity::TAGS.values_at(* Activity::TAGS.each_index.select {|i| i.odd?})
            else
              Activity::TAGS.values_at(* Activity::TAGS.each_index.select {|i| i.even?})
            end

    @activities = if params[:tag].present?
                    Activity.tagged_with(params[:tag])
                  else
                    Activity.all
                  end

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end

  def show
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :locale, tag_list: [])
  end
end
