class ActivitiesController < ApplicationController
  def index
    @tags = ActivityService.tags_per_language(params[:locale])
    @activities = ActivityService.activities_with_tag(params[:tag])
    @markers = set_markers(@activities)
  end

  private

  def set_markers(activities)
    activities.geocoded.map do |activity|
      {
        lat: activity.lat,
        lng: activity.lng,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end

  def activity_params
    params.require(:activity).permit(:name, :locale, tag_list: [])
  end
end
