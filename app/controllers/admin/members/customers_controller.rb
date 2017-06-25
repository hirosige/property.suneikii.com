class Admin::Members::CustomersController < AdminController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @customers = CustomersDecorator.decorate(
      CustomerDecorator.decorate_collection(
        Customer.page(params[:page])
      )
    )
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @customer = @user.build_customer
  end

  def edit
  end

  def create
    @customer_form = Customer.new

    respond_to do |format|
      if @customer_form.validate(customer_params)
        @customer_form.save
        format.html { redirect_to [:admin, :members, @customer], notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @customer_form = @customer
    respond_to do |format|
      if @customer_form.validate(params[:customer])
        @customer.update(customer_params)
        format.html { redirect_to [:admin, :members, @customer], notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to admin_members_user_customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(
          :first_name,
          :last_name,
          :birthday,
          :gender_id,
          :zip_code,
          :address,
          :tel1,
          :tel2,
          :memo,
          :user_id
      )
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_5.title')
      add_breadcrumb t('admin.customers.title')
    end
end
