class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :authenticate_user!

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    if params[:locale].present?
      cookies.permanent[:locale] = params[:locale] # save cookies
    end

    locale = cookies[:locale]&.to_sym # read cookies

    if I18n.available_locales.include?(locale)
      I18n.locale = locale # use cookies locale
    end
  end


  private

  def configured_permitted_params
    params.require(:activity).permit(:name, :locale, tag_list: [])
  end
end
