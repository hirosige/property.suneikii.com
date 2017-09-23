class Front::ApartmentsController < FrontController
  include Mobylette::RespondToMobileRequests

  before_action :set_apartment, only: [:show]
  before_action :set_root_breadcrumb

  def province
    add_breadcrumb t('front.apartments.province_breadcrumb')

    if Country.find_by(original_id: 'th').nil?
      raise ActionController::RoutingError.new('Not Found')
    end

    ids = Apartment.province_list(Country.find_by(original_id: 'th').id)
    @provinces = Province.balc_find(ids)

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def district
    add_breadcrumb t('front.apartments.district_breadcrumb', :province => @params_service.visualize(params[:province]))

    if Province.find_by(url_safe: params[:province]).nil?
      raise ActionController::RoutingError.new('Not Found')
    end

    ids = Apartment.district_list(Province.find_by(url_safe: params[:province]).id)
    @districts = District.balc_find(ids)

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def show
    add_breadcrumb "#{@apartment.name}の詳細情報", apartment_path(@apartment.id)

    track_visit_into_session

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def index
    if Province.where(original_id: params[:province])[0].nil?
      raise ActionController::RoutingError.new('Not Found')
    end

    @province = Province.where(url_safe: params[:province])[0] unless params[:province].nil?
    @district = District.where(url_safe: params[:district])[0] unless params[:district].nil?
    @sub_district = Subdistrict.where(original_id: params[:sub_district])[0] unless params[:sub_district].nil?

    add_breadcrumb @province.name_ja, apartment_district_list_path(params[:province]) unless @province.nil?
    add_breadcrumb @district.name_ja unless @district.nil?
    add_breadcrumb @sub_district.name_ja unless @sub_district.nil?

    search_condition  = {}
    search_condition[:province_id] = @province.id unless @province.nil?
    search_condition[:district_id] =  @district.id unless @district.nil?
    search_condition[:subdistrict_id] = @sub_district.id unless @sub_district.nil?

    @apartments = Front::ApartmentDecorator.decorate_collection(
        Apartment.published
            .includes(
                :apartment_info
            ).where(
            search_condition
        ).page(params[:page])
    )

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  private
    def set_apartment
      @apartment = Front::ApartmentDecorator.decorate(
          Apartment.find(params[:id])
      )
    end

    def set_root_breadcrumb
      add_breadcrumb t('front.apartments.title'), :apartment_province_list_path
    end
end
