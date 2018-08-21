class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def hello
    render html: "hello, world!"
  end

  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = t("please_login")
      redirect_to login_url
    end
  end
end
