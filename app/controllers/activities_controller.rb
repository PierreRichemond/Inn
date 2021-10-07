class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity }),
        # image_url: helpers.asset_url(activity.image.filename)
      }
    end
  end

  def show
  end
end
