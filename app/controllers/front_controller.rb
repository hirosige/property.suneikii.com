class FrontController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  before_filter :authenticate_user!
  # before_filter :banned_user?
  # before_filter :admin?
  before_action :set_locale

  layout 'properties_layout'
  add_breadcrumb 'Home'

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale unless params[:locale] == 'favicon'
    p params
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def banned_user?
    if current_user.blacklist_flg
      redirect_to eliminate_path, alert: '利用が停止されています、サポートへお問い合わせください'
    end
  end

  def admin?
    if current_user.role.id == 1
      redirect_to :root, alert: 'You are not permitted to get in this area'
    end
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
    end
end