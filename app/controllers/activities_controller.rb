class ActivitiesController < ApplicationController
  def index
    @activities =
    if params[:tag].present?
      Activity.tagged_with(params[:tag])
    else
      Activity.all
    end

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

  private

  def activity_params
    params.require(:activity).permit(:image, :name, tag_list: [] )
  end
end
