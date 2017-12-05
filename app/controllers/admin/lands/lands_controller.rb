class Admin::Lands::LandsController < AdminController
  before_action :set_land, only: [:show, :edit, :update, :destroy]

  def index
    @search = Land.search(params[:q])
    @lands = LandDecorator.decorate_collection(
        @search.result.accessible_by(current_ability).includes(
            :land_info,
            :country,
            :province,
            :district,
            :subdistrict,
            :provider
        ).page(params[:page])
    )

    @sql = @search.result.page(params[:page]).to_sql
  end

  def show
  end

  def new
    @land = Land.new
    @land.build_land_info
    @land.land_option_installations.build
    @land.land_surroundings.build

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

  def edit
  end

  def create
    @land = Land.new(land_params)

    respond_to do |format|
      if @land.save
        format.html { redirect_to [:admin, @land], flash: { :success => "#{@land.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @land }
      else
        format.html { render :new }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @land.image_safe_update(land_params)
        format.html { redirect_to [:admin, @land], flash: { :success => "#{@land.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @land }
      else
        format.html { render :edit }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @land.destroy
    respond_to do |format|
      format.html { redirect_to admin_lands_url, { :warning => "#{@land.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  def publish
    land = Land.find(params[:id])
    land.publish
    redirect_to ({:action => 'index'}), flash: { :info => "#{land.name}を公開しました。" }
  end

  def decline
    land = Land.find(params[:id])
    land.decline
    redirect_to ({:action => 'index'}), flash: { :warning => "#{land.name}を非公開しました。" }
  end

  def clean
    land = Land.includes(:land_info).find(params[:id])
    land.land_info.clean
    redirect_to ({:action => 'index'}), flash: { :info => "#{land.name}を空きにしました。" }
  end

  def occupy
    land = Land.includes(:land_info).find(params[:id])
    land.land_info.occupy
    redirect_to ({:action => 'index'}), flash: { :info => "#{land.name}を満員にしました。" }
  end

  def enable
    land = Land.includes(:land_info).find(params[:id])
    land.land_info.enable
    redirect_to ({:action => 'index'}), flash: { :info => "#{land.name}を即時入居可能にしました。" }
  end

  def disable
    land = Land.includes(:land_info).find(params[:id])
    land.land_info.disable
    redirect_to ({:action => 'index'}), flash: { :info => "#{land.name}を準備中にしました。" }
  end

  private
    def set_land
      @land = LandDecorator.decorate(
          Land.find(params[:id])
      )
    end

    def land_params
      params.require(:land).permit(
          :country_id,
          :province_id,
          :district_id,
          :subdistrict_id,
          :name,
          :rent_fee,
          :transportation,
          :address,
          :space,
          :photo,
          :recommendations,
          :status,
          :provider_id,
          :surety_company_id,
          :land_category_id,
          land_info_attributes: [
              :remarks,
              :latitude,
              :longitude,
              :corner,
              :low_rise_residential_area,
              :no_condition,
              :ownership_or_not,
              :contact_span,
              :conditions,
              :update_fee,
              :deal_way,
              :kitchen_bath,
              :services,
              :etc,
              :updating_on,
              :balcony_space,
              :light_direction,
              :management_id,
              :face_with_road,
              :send_back,
              :private_way_space,
              :urban_planning,
              :zoning,
              :topography,
              :ownership,
              :land_law_notification,
              :school,
              :shopping,
              :facilities
          ],
          land_option_installations_attributes: [
              :id,
              :land_id,
              :land_option_id,
              :_destroy,
              land_options_attributes:[
                  :name
              ]
          ],
          land_surroundings_attributes: [
              :id,
              :land_id,
              :surrounding_id,
              :distance,
              :_destroy
          ],
          land_thumbnails_attributes: [
              :image
          ]
      )
    end
end
