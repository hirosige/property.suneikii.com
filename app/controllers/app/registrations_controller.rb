class App::RegistrationsController < Devise::RegistrationsController
before_filter :configure_sign_up_params, only: [:new, :create]
before_filter :configure_account_update_params, only: [:update]
  layout "properties_layout"

  add_breadcrumb "#{Settings.site[:name]} Home", :root_path

  # GET /resource/sign_up
  def new
    add_breadcrumb t('front.sessions.registrations.title')

    super
  end

  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.


  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  protected
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(
          :email,
          :password,
          :password_confirmation,
          :role_id,
          :role,
          :provider_id,
          :name,
          profiles_attributes: [
              :postal_code,
              :address,
              :tel,
              :reciever_email
          ]
      )
    end
  end

  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << [:role_id]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(
          :email,
          :password,
          :password_confirmation,
          :role_id,
          :role,
          :provider_id,
          :name,
          profiles_attributes: [
              :postal_code,
              :address,
              :tel,
              :reciever_email
          ]
      )
    end
  end
end
