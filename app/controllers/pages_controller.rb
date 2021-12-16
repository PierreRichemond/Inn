class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def robots
    # Don't forget to delete /public/robots.txt
    respond_to :text
  end

end
