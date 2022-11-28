class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def robots
    respond_to :text
  end
end
