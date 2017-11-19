class Admin::Lands::LandOptionsController < AdminController
  before_action :set_land_option, only: [:show, :edit, :update, :destroy]

  # GET /land_options
  # GET /land_options.json
  def index
    @land_options = LandOptionDecorator.decorate_collection(
        LandOption.page(params[:page])
    )
  end

  # GET /land_options/1
  # GET /land_options/1.json
  def show
  end

  # GET /land_options/new
  def new
    @land_option = LandOption.new
  end

  # GET /land_options/1/edit
  def edit
  end

  # POST /land_options
  # POST /land_options.json
  def create
    @land_option = LandOption.new(land_option_params)

    respond_to do |format|
      if @land_option.save
        format.html { redirect_to [:admin, @land_option], flash: { :success => "#{@land_option.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @land_option }
      else
        format.html { render :new }
        format.json { render json: @land_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /land_options/1
  # PATCH/PUT /land_options/1.json
  def update
    respond_to do |format|
      if @land_option.update(land_option_params)
        format.html { redirect_to [:admin, @land_option], flash: { :success => "#{@land_option.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @land_option }
      else
        format.html { render :edit }
        format.json { render json: @land_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /land_options/1
  # DELETE /land_options/1.json
  def destroy
    @land_option.destroy
    respond_to do |format|
      format.html { redirect_to admin_land_options_url, flash: { :warning => "#{@land_option.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land_option
      @land_option = LandOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def land_option_params
      params.require(:land_option).permit(:name)
    end
end
