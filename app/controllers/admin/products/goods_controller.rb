class Admin::Products::GoodsController < AdminController
  before_action :set_good, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @search = Good.search(params[:q])
    @goods = @search.result.includes(
        :size,
        :shopper,
        :goods_category
    ).page(params[:page])
    @sql = @search.result.page(params[:page]).to_sql
  end

  def show
    session[:good_id] = params[:id]
    @session = session[:good_id]
  end

  def new
    @good = Good.new
  end

  def edit
  end

  def create
    p good_params
    @good = Good.new(good_params)

    respond_to do |format|
      if @good.save
        format.html { redirect_to [:admin, :products, @good], notice: 'Good was successfully created.' }
        format.json { render :show, status: :created, location: @good }
      else
        format.html { render :new }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @good.update(good_params)
        format.html { redirect_to [:admin, :products, @good], notice: 'Good was successfully updated.' }
        format.json { render :show, status: :ok, location: @good }
      else
        format.html { render :edit }
        format.json { render json: @good.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @good.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_goods_url, notice: 'Good was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_good
      @good = Good.find(params[:id])
    end

    def good_params
      params.require(:good).permit(
          :name,
          :size,
          :stock,
          :price,
          :ingredient,
          :description,
          :tenant_name,
          :category,
          :keyword,
          :gender,
          :memo,
          :ingredient_id,
          :gender_id,
          :goods_category_id,
          :color_id,
          :size_id,
          :photo,
          :shopper_id
      )
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_4.title')
      add_breadcrumb t('admin.goods.title')
    end
end
