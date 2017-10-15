class ApplicationController < ActionController::Base
  include ActionController::HttpAuthentication::Token::ControllerMethods

  protect_from_forgery with: :null_session
  # before_filter :authenticate_user!
  before_action :set_locale
  before_action :set_awesome_debugger
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_params_service

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

  def set_params_service
    @params_service = ParamsService.new(params)
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  def render_401
    add_breadcrumb "#{t('front.errors.error_401.title')} | #{Settings.site[:name]}"

    render template: 'errors/error_401', status: 401, layout: 'error', content_type: 'text/html'
  end

  def render_404
    add_breadcrumb "#{t('front.errors.error_404.title')} | #{Settings.site[:name]}"

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
