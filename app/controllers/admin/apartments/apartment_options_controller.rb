class Admin::Apartments::ApartmentOptionsController < AdminController
  before_action :set_apartment_option, only: [:show, :edit, :update, :destroy]

  # GET /apartment_options
  # GET /apartment_options.json
  def index
    @apartment_options = ApartmentOptionDecorator.decorate_collection(
        ApartmentOption.page(params[:page])
    )
  end

  # GET /apartment_options/1
  # GET /apartment_options/1.json
  def show
  end

  # GET /apartment_options/new
  def new
    @apartment_option = ApartmentOption.new
  end

  # GET /apartment_options/1/edit
  def edit
  end

  # POST /apartment_options
  # POST /apartment_options.json
  def create
    @apartment_option = ApartmentOption.new(apartment_option_params)

    respond_to do |format|
      if @apartment_option.save
        format.html { redirect_to [:admin, :apartments, @apartment_option], flash: { :success => "#{@apartment_option.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @apartment_option }
      else
        format.html { render :new }
        format.json { render json: @apartment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apartment_options/1
  # PATCH/PUT /apartment_options/1.json
  def update
    respond_to do |format|
      if @apartment_option.update(apartment_option_params)
        format.html { redirect_to [:admin, :apartments, @apartment_option], flash: { :success => "#{@apartment_option.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @apartment_option }
      else
        format.html { render :edit }
        format.json { render json: @apartment_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apartment_options/1
  # DELETE /apartment_options/1.json
  def destroy
    @apartment_option.destroy
    respond_to do |format|
      format.html { redirect_to admin_apartments_apartment_options_url, flash: { :warning => "#{@apartment_option.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartment_option
      @apartment_option = ApartmentOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartment_option_params
      params.require(:apartment_option).permit(:name)
    end
end
