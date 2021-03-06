class App::SessionsController < Devise::SessionsController
  include Mobylette::RespondToMobileRequests
  layout "properties_layout"

  add_breadcrumb "#{Settings.site[:name]} Home", :root_path

  # GET /resource/sign_in
  def new
    add_breadcrumb t('front.sessions.login.title')

    super
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
