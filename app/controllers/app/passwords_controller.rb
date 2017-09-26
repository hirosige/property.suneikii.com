class App::PasswordsController < Devise::PasswordsController
  layout "properties_layout"

  add_breadcrumb "#{Settings.site[:name]} Home", :root_path

  # GET /resource/password/new
  def new
    add_breadcrumb t('front.sessions.forget_password.title')

    super
  end

  # POST /resource/password
  # def create
  #   super
  # end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  # def update
  #   super
  # end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
