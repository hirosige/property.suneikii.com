class Admin::Accommodations::AccessoriesController < AdminController
  before_action :set_accessory, only: [:show, :edit, :update, :destroy]

  def index
    @accessories = AccessoryDecorator.decorate_collection(
        Accessory.page(params[:page])
    )
  end

  def show
  end

  def new
    @accessory = Accessory.new
  end

  def edit
  end

  def create
    @accessory = Accessory.new(accessory_params)

    respond_to do |format|
      if @accessory.save
        format.html { redirect_to [:admin, :accommodations, @accessory], notice: 'Accessory was successfully created.' }
        format.json { render :show, status: :created, location: @accessory }
      else
        format.html { render :new }
        format.json { render json: @accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @accessory.update(accessory_params)
        format.html { redirect_to [:admin, :accommodations, @accessory], notice: 'Accessory was successfully updated.' }
        format.json { render :show, status: :ok, location: @accessory }
      else
        format.html { render :edit }
        format.json { render json: @accessory.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @accessory.destroy
    respond_to do |format|
      format.html { redirect_to admin_accommodations_accessories_url, notice: 'Accessory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_accessory
      @accessory = Accessory.find(params[:id])
    end

    def accessory_params
      params.require(:accessory).permit(:name)
    end
end
