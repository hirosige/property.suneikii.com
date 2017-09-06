class Admin::Apartments::ApartmentsController < AdminController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @apartments = ApartmentDecorator.decorate_collection(
        Apartment.accessible_by(current_ability).includes(
            :apartment_info,
            :country,
            :province,
            :district,
            :subdistrict,
            :provider
        ).page(params[:page])
    )
  end

  def show
  end

  def new
    @apartment = Apartment.new
    @apartment.build_apartment_info
    @apartment.apartment_option_installations.build
    @apartment.apartment_surroundings.build

    3.times { @apartment.apartment_thumbnails.build}

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
    @apartment = Apartment.new(apartment_params)

    respond_to do |format|
      if @apartment.save
        format.html { redirect_to [:admin, :apartments, @apartment], flash: { :success => "#{@apartment.name}を作成しました。" } }
        format.json { render :show, status: :created, location: @apartment }
      else
        format.html { render :new }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @apartment.update(apartment_params)
        format.html { redirect_to [:admin, :apartments, @apartment], flash: { :success => "#{@apartment.name}を更新しました。" } }
        format.json { render :show, status: :ok, location: @apartment }
      else
        format.html { render :edit }
        format.json { render json: @apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @apartment.destroy
    respond_to do |format|
      format.html { redirect_to admin_apartments_apartments_url, { :warning => "#{@apartment.name}を削除しました。" } }
      format.json { head :no_content }
    end
  end

  def publish
    apartment = Apartment.find(params[:id])
    apartment.publish
    redirect_to ({:action => 'index'}), flash: { :info => "#{apartment.name}を公開しました。" }
  end

  def decline
    apartment = Apartment.find(params[:id])
    apartment.decline
    redirect_to ({:action => 'index'}), flash: { :warning => "#{apartment.name}を非公開しました。" }
  end

  def clean
    apartment = Apartment.includes(:apartment_info).find(params[:id])
    apartment.apartment_info.clean
    redirect_to ({:action => 'index'}), flash: { :info => "#{apartment.name}を空きにしました。" }
  end

  def occupy
    apartment = Apartment.includes(:apartment_info).find(params[:id])
    apartment.apartment_info.occupy
    redirect_to ({:action => 'index'}), flash: { :info => "#{apartment.name}を満員にしました。" }
  end

  def enable
    apartment = Apartment.includes(:apartment_info).find(params[:id])
    apartment.apartment_info.enable
    redirect_to ({:action => 'index'}), flash: { :info => "#{apartment.name}を即時入居可能にしました。" }
  end

  def disable
    apartment = Apartment.includes(:apartment_info).find(params[:id])
    apartment.apartment_info.disable
    redirect_to ({:action => 'index'}), flash: { :info => "#{apartment.name}を準備中にしました。" }
  end

  private
    def set_apartment
      @apartment = ApartmentDecorator.decorate(
          Apartment.find(params[:id])
      )
    end

    def apartment_params
      params.require(:apartment).permit(
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
          apartment_info_attributes: [
              :remarks,
              :latitude,
              :longitude,
              :reconstructed_or_not,
              :renovated_or_not,
              :car_park_or_not,
              :bicycle_park_or_not,
              :bike_park_or_not,
              :can_have_pet_or_not,
              :floors,
              :made_of,
              :contact_span,
              :conditions,
              :update_fee,
              :updating_on,
              :management_id
          ],
          apartment_option_installations_attributes: [
              :id,
              :apartment_id,
              :apartment_option_id,
              :_destroy,
              apartment_options_attributes:[
                  :name
              ]
          ],
          apartment_surroundings_attributes: [
              :id,
              :apartment_id,
              :surrounding_id,
              :distance,
              :_destroy
          ],
          apartment_thumbnails_attributes: [
              :image
          ]
      )
    end
end
