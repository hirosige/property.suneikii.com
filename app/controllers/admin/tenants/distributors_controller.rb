class Admin::Tenants::DistributorsController < AdminController
  before_action :set_distributor, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @distributors = Distributor.page(params[:page])
  end

  def show
  end

  def new
    @distributor = Distributor.new
  end

  def edit
  end

  def create
    @distributor = Distributor.new(distributor_params)

    respond_to do |format|
      if @distributor.save
        format.html { redirect_to [:admin, :tenants, @distributor], notice: 'Distributor was successfully created.' }
        format.json { render :show, status: :created, location: @distributor }
      else
        format.html { render :new }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @distributor.update(distributor_params)
        format.html { redirect_to [:admin, :tenants, @distributor], notice: 'Distributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @distributor }
      else
        format.html { render :edit }
        format.json { render json: @distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @distributor.destroy
    respond_to do |format|
      format.html { redirect_to admin_tenants_distributors_url, notice: 'Distributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_distributor
      @distributor = Distributor.find(params[:id])
    end

    def distributor_params
      params.require(:distributor).permit(:name, :tel, :address)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_6.title')
      add_breadcrumb t('admin.distributors.title')
    end
end
