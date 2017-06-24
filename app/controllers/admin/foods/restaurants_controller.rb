class Admin::Foods::RestaurantsController < AdminController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = RestaurantDecorator.decorate_collection(
        Restaurant.page(params[:page])
    )
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.time_tables.build
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    respond_to do |format|
      if @restaurant.save
        format.html { redirect_to [:admin, :foods, @restaurant], notice: 'Restaurant was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        format.html { render :new }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @restaurant.update(restaurant_params)
        format.html { redirect_to [:admin, :foods, @restaurant], notice: 'Restaurant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant }
      else
        format.html { render :edit }
        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @restaurant.destroy
    respond_to do |format|
      format.html { redirect_to admin_foods_restaurants_url, notice: 'Restaurant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_restaurant
      @restaurant = Restaurant.friendly.find(params[:id])
    end

    def restaurant_params
      params.require(:restaurant).permit(
          :name,
          :phone_number,
          :description,
          :notification,
          :floor,
          :chairs,
          :private_room,
          :photo,
          time_tables_attributes: [
              :id,
              :name,
              :start_time,
              :end_time,
              :restaurant_id,
              :_destroy
          ],
      )
    end
end
