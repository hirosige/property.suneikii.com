class Admin::Members::BusinessPartnersController < AdminController
  before_action :set_business_partner, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @business_partners = BusinessPartnerDecorator.decorate_collection(
        BusinessPartner.page(params[:page])
    )
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @business_partner = @user.build_business_partner
  end

  def edit
  end

  def create
    @business_partner = BusinessPartner.new(business_partner_params)

    respond_to do |format|
      if @business_partner.save
        format.html { redirect_to [:admin, :members, @business_partner], notice: 'Business partner was successfully created.' }
        format.json { render :show, status: :created, location: @business_partner }
      else
        format.html { render :new }
        format.json { render json: @business_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @business_partner.update(business_partner_params)
        format.html { redirect_to [:admin, :members, @business_partner], notice: 'Business partner was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_partner }
      else
        format.html { render :edit }
        format.json { render json: @business_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @business_partner.destroy
    respond_to do |format|
      format.html { redirect_to business_partners_url, notice: 'Business partner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_business_partner
      @business_partner = BusinessPartner.find(params[:id])
    end

    def business_partner_params
      params.require(:business_partner).permit(:first_name, :last_name, :birthday, :gender_id, :zip_code, :address, :tel1, :tel2, :memo, :user_id)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_5.title')
      add_breadcrumb t('admin.business_partners.title')
    end
end
