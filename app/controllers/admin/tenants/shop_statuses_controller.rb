class Admin::Tenants::ShopStatusesController < AdminController
  before_action :set_shop_status, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @shop_statuses = ShopStatus.page(params[:page])
  end

  def show
  end

  def new
    @shop_status = ShopStatus.new
  end

  def edit
  end

  def create
    @shop_status = ShopStatus.new(shop_status_params)

    respond_to do |format|
      if @shop_status.save
        format.html { redirect_to [:admin, :tenants, @shop_status], notice: 'Shop status was successfully created.' }
        format.json { render :show, status: :created, location: @shop_status }
      else
        format.html { render :new }
        format.json { render json: @shop_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shop_status.update(shop_status_params)
        format.html { redirect_to [:admin, :tenants, @shop_status], notice: 'Shop status was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_status }
      else
        format.html { render :edit }
        format.json { render json: @shop_status.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shop_status.destroy
    respond_to do |format|
      format.html { redirect_to admin_tenants_shop_status_path, notice: 'Shop status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_shop_status
      @shop_status = ShopStatus.find(params[:id])
    end

    def shop_status_params
      params.require(:shop_status).permit(:name, :shopper_id)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_6.title')
      add_breadcrumb t('admin.shop_statuses.title')
    end
end
