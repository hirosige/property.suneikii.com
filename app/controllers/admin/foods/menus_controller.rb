class Admin::Foods::MenusController < AdminController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

  def index
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @menus      = MenuDecorator.decorate_collection(
        @restaurant.menus.page(params[:page])
    )
  end

  def show
  end

  def new
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @menu       = @restaurant.menus.build
  end

  def edit
  end

  def create
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @menu       = @restaurant.menus.build(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to [:admin, :foods, @restaurant, @menu], notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to [:admin, :foods, @restaurant, @menu], notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to admin_foods_restaurant_menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_menu
      @restaurant = Restaurant.friendly.find(params[:restaurant_id])
      @menu       = @restaurant.menus.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(
          :title,
          :name,
          :photo,
          :description,
          :price,
          :restaurant_id
      )
    end
end
