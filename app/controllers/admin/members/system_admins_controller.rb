class Admin::Members::SystemAdminsController < AdminController
  before_action :set_system_admin, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @system_admins = SystemAdmin.page(params[:page])
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @system_admin = @user.build_system_admin
  end

  def edit
  end

  def create
    @system_admin = SystemAdmin.new(system_admin_params)

    respond_to do |format|
      if @system_admin.save
        format.html { redirect_to [:admin, :members, @system_admin], notice: 'System admin was successfully created.' }
        format.json { render :show, status: :created, location: @system_admin }
      else
        format.html { render :new }
        format.json { render json: @system_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @system_admin.update(system_admin_params)
        format.html { redirect_to [:admin, :members, @system_admin], notice: 'System admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_admin }
      else
        format.html { render :edit }
        format.json { render json: @system_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @system_admin.destroy
    respond_to do |format|
      format.html { redirect_to admin_members_system_admin_url, notice: 'System admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_system_admin
      @system_admin = SystemAdmin.find(params[:id])
    end

    def system_admin_params
      params.require(:system_admin).permit(:first_name, :last_name, :birthday, :gender_id, :zip_code, :address, :tel1, :tel2, :memo, :user_id)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_5.title')
      add_breadcrumb t('admin.system_admins.title')
    end
end
