class Admin::Products::IngredientsController < AdminController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  before_action :set_breadcrumps_base

  def index
    @ingredients = Ingredient.page(params[:page])
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    respond_to do |format|
      if @ingredient.save
        @ingredients = Ingredient.all
        format.html { redirect_to [:admin, :products, @ingredient], notice: 'Ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient }
        format.js { render :create, location: [:admin, :products, @ingredient]}
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to [:admin, :products, @ingredient], notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url, notice: 'Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_4.title')
      add_breadcrumb t('admin.ingredients.title')
    end
end
