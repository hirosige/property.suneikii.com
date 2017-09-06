class Admin::Providers::ProvidersController < AdminController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  # GET /providers.json
  def index
    @providers = ProviderDecorator.decorate_collection(
        Provider.accessible_by(current_ability).page(params[:page])
    )
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    respond_to do |format|
      if @provider.save
        format.html { redirect_to [:admin, :providers, @provider], notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @provider }
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to [:admin, :providers, @provider], notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edit }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy
    respond_to do |format|
      format.html { redirect_to admin_providers_providers_url, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = ProviderDecorator.decorate(
          Provider.find(params[:id])
      )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(
          :name,
          :photo,
          :introduction,
          :site_url,
          :address,
          :tel,
          :fax,
          :certificate,
          :working_time,
          :holidays
      )
    end
end
