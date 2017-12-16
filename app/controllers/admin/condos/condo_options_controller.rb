class Admin::Condos::CondoOptionsController < AdminController
  before_action :set_condo_option, only: [:show, :edit, :update, :destroy]

  # GET /condo_options
  # GET /condo_options.json
  def index
    @condo_options = CondoOptionDecorator.decorate_collection(
        CondoOption.page(params[:page])
    )
  end

  # GET /condo_options/1
  # GET /condo_options/1.json
  def show
  end

  # GET /condo_options/new
  def new
    @condo_option = CondoOption.new
  end

  # GET /condo_options/1/edit
  def edit
  end

  # POST /condo_options
  # POST /condo_options.json
  def create
    @condo_option = CondoOption.new(condo_option_params)

    respond_to do |format|
      if @condo_option.save
        format.html { redirect_to [:admin, @condo_option], flash: { :success => "#{@condo_option.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @condo_option }
      else
        format.html { render :new }
        format.json { render json: @condo_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condo_options/1
  # PATCH/PUT /condo_options/1.json
  def update
    respond_to do |format|
      if @condo_option.update(condo_option_params)
        format.html { redirect_to [:admin, @condo_option], flash: { :success => "#{@condo_option.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @condo_option }
      else
        format.html { render :edit }
        format.json { render json: @condo_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condo_options/1
  # DELETE /condo_options/1.json
  def destroy
    @condo_option.destroy
    respond_to do |format|
      format.html { redirect_to admin_condo_options_url, flash: { :warning => "#{@condo_option.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condo_option
      @condo_option = CondoOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condo_option_params
      params.require(:condo_option).permit(:name)
    end
end
