class Admin::Products::GoodsCategoriesController < AdminController
  before_action :set_goods_category, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @goods_categories = GoodsCategory.page(params[:page])
  end

  def show
  end

  def new
    @goods_category = GoodsCategory.new
  end

  def edit
  end

  def create
    @goods_category = GoodsCategory.new(goods_category_params)

    respond_to do |format|
      if @goods_category.save
        format.html { redirect_to [:admin, :products, @goods_category], notice: 'Goods category was successfully created.' }
        format.json { render :show, status: :created, location: @goods_category }
      else
        format.html { render :new }
        format.json { render json: @goods_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @goods_category.update(goods_category_params)
        format.html { redirect_to [:admin, :products, @goods_category], notice: 'Goods category was successfully updated.' }
        format.json { render :show, status: :ok, location: @goods_category }
      else
        format.html { render :edit }
        format.json { render json: @goods_category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @goods_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_goods_categories_url, notice: 'Goods category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_goods_category
      @goods_category = GoodsCategory.find(params[:id])
    end

    def goods_category_params
      params.require(:goods_category).permit(:name)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_4.title')
      add_breadcrumb t('admin.goods_categories.title')
    end
end
