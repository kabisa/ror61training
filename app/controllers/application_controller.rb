class ApplicationController < ActionController::Base
  around_action :switch_locale
  before_action :set_uuid, unless: :uuid_already_set?

  def default_url_options
    { locale: I18n.locale }
  end

  private

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def set_uuid
    cookies[:uuid] = SecureRandom.uuid
  end

  def uuid_already_set?
    cookies[:uuid].present?
  end
end
