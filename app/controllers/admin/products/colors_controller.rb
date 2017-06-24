class Admin::Products::ColorsController < AdminController
  before_action :set_color, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @colors = Color.page(params[:page])
    respond_to do |format|
      format.html
      format.csv do
        filename = 'products'
        headers['Content-Disposition'] = "attachment; filename=\"#{filename}.csv\""
      end
    end
  end

  def show
  end

  def new
    @color = Color.new
  end

  def edit
  end

  def create
    @color = Color.new(color_params)

    respond_to do |format|
      if @color.save
        format.html { redirect_to [:admin, :products, @color], notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @color }
      else
        format.html { render :new }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html { redirect_to [:admin, :products, @color], notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @color }
      else
        format.html { render :edit }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @color.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_colors_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_color
      @color = Color.find(params[:id])
    end

    def color_params
      params.require(:color).permit(:name)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_4.title')
      add_breadcrumb t('admin.colors.title')
    end
end
