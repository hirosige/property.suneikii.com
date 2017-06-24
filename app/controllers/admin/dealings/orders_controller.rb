class Admin::Dealings::OrdersController < AdminController
  before_action :set_order, only: [:edit, :update, :destroy, :pay]
  before_action :set_breadcrumps_base

  def index
    @orders = Order.includes(:user).page(params[:page])
  end

  def show
    @order = Order.find(params[:id])
  end

  def pay
    @order.pay unless @order.paid?
    redirect_to :action => 'edit'
  end

  def new
    @order = Order.new
  end

  def edit
    add_breadcrumb '更新'
    add_breadcrumb @order.id, ''
  end

  def create
    @order = Order.new(order_params)
    @order.order_date = DateTime.now
    @order.user_id = current_user.id

    respond_to do |format|
      if @order.save
        format.html { redirect_to [:admin, :dealings, @order], notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to [:admin, :dealings, @order], notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to admin_dealings_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.includes(timeline_messages: [:user]).find(params[:id])
      @order.timeline_messages.order(posted_at: :desc)
    end

    def order_params
      params.require(:order).permit(
          :order_id,
          :order_date,
          :user_id,
          :status,
          :total_amount,
          :shipping_cost,
          :tax,
          :note,
          :timeline_id,
          :kind_list,
          order_details_attributes: %i[id name good_id qty sub_total _destroy]
      )
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_3.title')
      add_breadcrumb t('admin.orders.title')
    end
end
