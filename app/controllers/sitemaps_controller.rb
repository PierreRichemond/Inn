# app/controllers/sitemaps_controller.rb

class SitemapsController < ApplicationController

  layout :false
  before_action :init_sitemap

  def index
    @rooms = Room.all
    @activities = Activity.all
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end
end
