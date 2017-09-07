
class AdminController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :authenticate_user!
  # before_filter :banned_user?
  before_filter :authenticate_admin?
  before_action :set_locale

  layout 'admin'
  add_breadcrumb 'Home'

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale unless params[:locale] == 'favicon'
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def banned_user?
    if current_user.blacklist_flg
      redirect_to eliminate_path, alert: '利用が停止されています、サポートへお問い合わせください'
    end
  end

  def authenticate_admin?
    if current_user.customer?
      raise AccessDenied.new
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
    end
end
