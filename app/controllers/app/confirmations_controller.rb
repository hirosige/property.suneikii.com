class App::ConfirmationsController < Devise::ConfirmationsController
  layout "properties_layout"

  add_breadcrumb "#{Settings.site[:name]} Home", :root_path

  # GET /resource/confirmation/new
  def new
    add_breadcrumb t('front.sessions.confirmation.title')

    super
  end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
