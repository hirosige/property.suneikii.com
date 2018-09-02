class Admin::Condos::CondosController < AdminController
  before_action :set_condo, only: [:show, :edit, :update, :destroy]

  def index
    @search = Condo.search(params[:q])
    @condos = CondoDecorator.decorate_collection(
        @search.result.accessible_by(current_ability).includes(
            :condo_info,
            :country,
            :province,
            :district,
            :subdistrict,
            :provider,
            :room_type,
        ).page(params[:page])
    )

    @sql = @search.result.page(params[:page]).to_sql
  end

  def show
  end

  def new
    @condo = Condo.new
    @condo.build_condo_info
    @condo.condo_option_installations.build
    @condo.condo_surroundings.build

    @places = Array.new

    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place[:latitude]
      marker.lng place[:longitude]
      marker.infowindow place[:description]
      marker.json({title: place[:title]})
    end


  end

  def edit
    @places = Array.new
    @places.push({
                     :latitude    => 12.922723,
                     :longitude   => 100.884987,
                     :description => 'Lawinta Hotel',
                     :title       => 'Lawinta Hotel'
                 })

    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place[:latitude]
      marker.lng place[:longitude]
      marker.infowindow place[:description]
      marker.json({title: place[:title]})
    end
  end

  def create
    @condo = Condo.new(condo_params)

    respond_to do |format|
      p @condo
      if @condo.save
        format.html { redirect_to [:admin, @condo], flash: { :success => "#{@condo.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @condo }
      else
        format.html { render :new }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @condo.image_safe_update(condo_params)
        p "###### ここだよ #####"
        p condo_params
        format.html { redirect_to [:admin, @condo], flash: { :success => "#{@condo.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @condo }
      else
        format.html { render :edit }
        format.json { render json: @condo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @condo.destroy
    respond_to do |format|
      format.html { redirect_to admin_condos_url, { :warning => "#{@condo.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  def publish
    condo = Condo.find(params[:id])
    condo.publish
    redirect_to ({:action => 'index'}), flash: { :info => "#{condo.name}を公開しました。" }
  end

  def decline
    condo = Condo.find(params[:id])
    condo.decline
    redirect_to ({:action => 'index'}), flash: { :warning => "#{condo.name}を非公開しました。" }
  end

  def clean
    condo = Condo.includes(:condo_info).find(params[:id])
    condo.condo_info.clean
    redirect_to ({:action => 'index'}), flash: { :info => "#{condo.name}を空きにしました。" }
  end

  def occupy
    condo = Condo.includes(:condo_info).find(params[:id])
    condo.condo_info.occupy
    redirect_to ({:action => 'index'}), flash: { :info => "#{condo.name}を満員にしました。" }
  end

  def enable
    condo = Condo.includes(:condo_info).find(params[:id])
    condo.condo_info.enable
    redirect_to ({:action => 'index'}), flash: { :info => "#{condo.name}を即時入居可能にしました。" }
  end

  def disable
    condo = Condo.includes(:condo_info).find(params[:id])
    condo.condo_info.disable
    redirect_to ({:action => 'index'}), flash: { :info => "#{condo.name}を準備中にしました。" }
  end

  private
    def set_condo
      @condo = CondoDecorator.decorate(
          Condo.find(params[:id])
      )
    end

    def condo_params
      params.require(:condo).permit(
          :country_id,
          :province_id,
          :district_id,
          :subdistrict_id,
          :name,
          :rent_fee,
          :security_deposit,
          :deposit,
          :transportation,
          :utility_fee,
          :key_money,
          :address,
          :since_when,
          :room_type_id,
          :space,
          :photo,
          :recommendations,
          :status,
          :provider_id,
          :surety_company_id,
          condo_info_attributes: [
              :remarks,
              :latitude,
              :longitude,
              :brandnew,
              :more_than_2floors,
              :light_on_south,
              :parkinglot,
              :auto_lock,
              :air_con,
              :separate_bath_toilet,
              :reheating,
              :wooden_floor,
              :pet,
              :floor,
              :floors,
              :made_of,
              :contact_span,
              :conditions,
              :update_fee,
              :number_of_rooms,
              :house_insurance,
              :deal_way,
              :kitchen_bath,
              :services,
              :etc,
              :updating_on,
              :balcony_space,
              :light_direction,
              :management_id
          ],
          condo_option_installations_attributes: [
              :id,
              :condo_id,
              :condo_option_id,
              :_destroy,
              condo_options_attributes:[
                  :name
              ]
          ],
          condo_surroundings_attributes: [
              :id,
              :condo_id,
              :surrounding_id,
              :distance,
              :_destroy
          ],
          condo_thumbnails_attributes: [
              :image
          ]
      )
    end
end
