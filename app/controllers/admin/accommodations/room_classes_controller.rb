class Admin::Accommodations::RoomClassesController < AdminController
  before_action :set_room_class, only: [:show, :edit, :update, :destroy]

  def index
    @room_classes = RoomClassDecorator.decorate_collection(
      RoomClass.includes(
          :accessories,
          :services
      ).page(params[:page])
    )
  end

  def show
  end

  def new
    @room_class = RoomClass.new
    @room_class.room_accessories.build
    @room_class.room_services.build
  end

  def edit
  end

  def create
    @room_class = RoomClass.new(room_class_params)

    respond_to do |format|
      if @room_class.save
        format.html { redirect_to [:admin, :accommodations, @room_class], notice: 'Room class was successfully created.' }
        format.json { render :show, status: :created, location: @room_class }
      else
        format.html { render :new }
        format.json { render json: @room_class.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @room_class.update(room_class_params)
        format.html { redirect_to [:admin, :accommodations, @room_class], notice: 'Room class was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_class }
      else
        format.html { render :edit }
        format.json { render json: @room_class.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @room_class.destroy
    respond_to do |format|
      format.html { redirect_to admin_accommodations_room_classes_url, notice: 'Room class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_room_class
      @room_class = RoomClass.find(params[:id])
    end

    def room_class_params
      params.require(:room_class).permit(
        :name,
        :image,
        room_accessories_attributes: [
          :id,
          :room_class_id,
          :accessory_id,
          :_destroy,
          accessory_attributes:[
            :name
          ]
        ],
        room_services_attributes: [
          :id,
          :room_class_id,
          :service_id,
          :_destroy,
          accessory_attributes:[
            :name
          ]
        ]
      )
    end
end
