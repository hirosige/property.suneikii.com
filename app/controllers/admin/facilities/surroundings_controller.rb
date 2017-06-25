class Admin::Facilities::SurroundingsController < AdminController
  before_action :set_surrounding, only: [:show, :edit, :update, :destroy]

  # GET /surroundings
  # GET /surroundings.json
  def index
    @surroundings = SurroundingDecorator.decorate_collection(
        Surrounding.page(params[:page])
    )
  end

  # GET /surroundings/1
  # GET /surroundings/1.json
  def show
  end

  # GET /surroundings/new
  def new
    @surrounding = Surrounding.new
  end

  # GET /surroundings/1/edit
  def edit
  end

  # POST /surroundings
  # POST /surroundings.json
  def create
    @surrounding = Surrounding.new(surrounding_params)

    p @surrounding
    respond_to do |format|
      if @surrounding.save
        format.html { redirect_to [:admin, :facilities, @surrounding], notice: 'Surrounding was successfully created.' }
        format.json { render :show, status: :created, location: @surrounding }
      else
        format.html { render :new }
        format.json { render json: @surrounding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surroundings/1
  # PATCH/PUT /surroundings/1.json
  def update
    respond_to do |format|
      if @surrounding.update(surrounding_params)
        format.html { redirect_to [:admin, :facilities, @surrounding], notice: 'Surrounding was successfully updated.' }
        format.json { render :show, status: :ok, location: @surrounding }
      else
        format.html { render :edit }
        format.json { render json: @surrounding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surroundings/1
  # DELETE /surroundings/1.json
  def destroy
    @surrounding.destroy
    respond_to do |format|
      format.html { redirect_to admin_facilities_surroundings_url, notice: 'Surrounding was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surrounding
      @surrounding = Surrounding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surrounding_params
      params.require(:surrounding).permit(:name, :latitude, :longitude, :photo)
    end
end
