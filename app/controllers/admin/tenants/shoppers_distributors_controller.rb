class Admin::Tenants::ShoppersDistributorsController < AdminController
  before_action :set_shoppers_distributor, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @shoppers_distributors = ShoppersDistributorDecorator.decorate_collection(
        ShoppersDistributor.includes(
          :shopper,
          :distributor
        ).page(params[:page])
    )
  end

  def show
  end

  def new
    @shoppers_distributor = ShoppersDistributor.new
  end

  def edit
  end

  def create
    @shoppers_distributor = ShoppersDistributor.new(shoppers_distributor_params)

    respond_to do |format|
      if @shoppers_distributor.save
        format.html { redirect_to [:admin, :tenants, @shoppers_distributor], notice: 'Shoppers distributor was successfully created.' }
        format.json { render :show, status: :created, location: @shoppers_distributor }
      else
        format.html { render :new }
        format.json { render json: @shoppers_distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shoppers_distributor.update(shoppers_distributor_params)
        format.html { redirect_to [:admin, :tenants, @shoppers_distributor], notice: 'Shoppers distributor was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoppers_distributor }
      else
        format.html { render :edit }
        format.json { render json: @shoppers_distributor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shoppers_distributor.destroy
    respond_to do |format|
      format.html { redirect_to admin_tenants_shoppers_distributor_url, notice: 'Shoppers distributor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_shoppers_distributor
      @shoppers_distributor = ShoppersDistributor.find(params[:id])
    end

    def shoppers_distributor_params
      params.require(:shoppers_distributor).permit(:shopper_id, :distributor_id)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_6.title')
      add_breadcrumb t('admin.shoppers_distributors.title')
    end
end
