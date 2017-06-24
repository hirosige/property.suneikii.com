class Admin::Tenants::ShoppersController < AdminController
  before_action :set_shopper, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @shoppers = Shopper.includes(
      :shop_status
    ).page(params[:page])
  end

  def show
  end

  def new
    @shopper = Shopper.new
  end

  def edit
  end

  def create
    @shopper = Shopper.new(shopper_params)

    respond_to do |format|
      if @shopper.save
        format.html { redirect_to [:admin, :tenants, @shopper], notice: 'Shopper was successfully created.' }
        format.json { render :show, status: :created, location: @shopper }
      else
        format.html { render :new }
        format.json { render json: @shopper.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shopper.update(shopper_params)
        format.html { redirect_to [:admin, :tenants, @shopper], notice: 'Shopper was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopper }
      else
        format.html { render :edit }
        format.json { render json: @shopper.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shopper.destroy
    respond_to do |format|
      format.html { redirect_to admin_tenants_shoppers_url, notice: 'Shopper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_shopper
      @shopper = Shopper.find(params[:id])
    end

    def shopper_params
      params.require(:shopper).permit(:shop_name, :representative_name, :zip_code, :address, :tel1, :tel2, :mail_address, :shop_status_id, :account_number, :memo, :user_id)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_6.title')
      add_breadcrumb t('admin.shoppers.title')
    end
end
