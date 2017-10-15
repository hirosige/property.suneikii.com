class Api::V1::ApartmentsController < Api::ApiController
  before_action :set_apartment, only: [:show, :edit, :update, :destroy]

  def index
    @search = Apartment.search(params[:q])
    @apartments = ApartmentDecorator.decorate_collection(
        @search.result.accessible_by(current_ability).includes(
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
          :surety_company_id,
          apartment_info_attributes: [
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
