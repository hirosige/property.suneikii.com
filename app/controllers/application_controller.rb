class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # before_filter :authenticate_user!
  before_action :set_locale
  before_action :set_awesome_debugger
  before_action :configure_permitted_parameters, if: :devise_controller?

  # rescue_from ActiveRecord::RecordNotFound, with: :render_404
  # rescue_from ActionController::RoutingError, with: :render_404
  rescue_from AccessDenied, with: :render_401

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def set_awesome_debugger
    if Rails.env == 'development'
      @awesome_debugger = AwesomeDebugger.new
      @awesome_debugger.learn(params, 'URL Params')

    end
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def render_401
    add_breadcrumb "このページにアクセスする権限がありません。 | #{Settings.site[:name]}"

    render template: 'errors/error_401', status: 401, layout: 'error', content_type: 'text/html'
  end

  def render_404
    add_breadcrumb "ページが見つかりません。 | #{Settings.site[:name]}"

    render template: 'errors/error_404', status: 404, layout: 'error', content_type: 'text/html'
  end

  def after_sign_in_path_for(resource)
    if User.find(resource.id).admin?
      admin_path
    else
      user_profile_path
    end
  end

  def after_sign_out_path_for(resource)
    user_logout_path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id])
    end
end
