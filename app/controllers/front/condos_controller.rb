class Front::CondosController < FrontController
  include Mobylette::RespondToMobileRequests

  before_action :set_condo, only: [:show]
  before_action :set_root_breadcrumb

  def province
    add_breadcrumb t('front.condos.province_breadcrumb')

    if Country.find_by(original_id: 'th').nil?
      raise ActionController::RoutingError.new('Not Found')
    end

    ids = Condo.province_list(Country.find_by(original_id: 'th').id)
    @provinces = Province.balc_find(ids)

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def district
    add_breadcrumb t('front.condos.district_breadcrumb', :province => @params_service.visualize(params[:province]))

    if Province.find_by(url_safe: params[:province]).nil?
      raise ActionController::RoutingError.new('Not Found')
    end

    ids = Condo.district_list(Province.find_by(url_safe: params[:province]).id)
    @districts = District.balc_find(ids)

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def show
    add_breadcrumb t('front.condos.show.breadcrumb', :condo_name => @condo.name),
                   condo_path(@condo.id)

    track_visit_into_session

    @places = Array.new
    unless @condo.condo_info.nil?
      @places.push({
                       :latitude    => @condo.condo_info.latitude,
                       :longitude   => @condo.condo_info.longitude,
                       :description => @condo.name,
                       :title       => @condo.name
                   })

      @hash = Gmaps4rails.build_markers(@places) do |place, marker|
        marker.lat place[:latitude]
        marker.lng place[:longitude]
        marker.infowindow place[:description]
        marker.json({title: place[:title]})
      end
    end

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

    add_breadcrumb @province.name_ja, condo_district_list_path(params[:province]) unless @province.nil?
    add_breadcrumb @district.name_ja unless @district.nil?
    add_breadcrumb @sub_district.name_ja unless @sub_district.nil?

    search_condition  = {}
    search_condition[:province_id] = @province.id unless @province.nil?
    search_condition[:district_id] =  @district.id unless @district.nil?
    search_condition[:subdistrict_id] = @sub_district.id unless @sub_district.nil?

    @condos = Front::CondoDecorator.decorate_collection(
        Condo.published
            .includes(
                :condo_info,
                :room_type
            ).where(
            search_condition
        ).page(params[:page])
    )

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def inquiry
    @condo = Condo.find(params[:id])
    @property_inquiry = PropertyInquiry.new

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def confirm
    @condo = Condo.find(params[:id])
    @property_inquiry = PropertyInquiry.new(property_inquiry_params)

    if @property_inquiry.valid?
      render :action => 'confirm'
    else
      render :action => 'inquiry'
    end
  end

  def thanks
    @property_inquiry = PropertyInquiry.new(property_inquiry_params)
    @property_inquiry.save

    PropertyInquiryMailer.received_email(@property_inquiry).deliver
  end

  private
    def set_condo
      @condo = Front::CondoDecorator.decorate(
          Condo.find(params[:id])
      )
    end

    def set_root_breadcrumb
      add_breadcrumb t('front.condos.title'), :condo_province_list_path
    end

    def property_inquiry_params
      params.require(:property_inquiry).permit(
          :name,
          :email,
          :tel,
          :body,
          :condo_id
      )
    end
end
