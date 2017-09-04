class Front::ApartmentsController < FrontController
  before_action :set_apartment, only: [:show]

  add_breadcrumb 'アパート', :apartments_path

  def index
    add_breadcrumb 'バンコクの物件一覧'

    @apartments = Front::ApartmentDecorator.decorate_collection(
        Apartment.published
            .includes(
                :apartment_info
            ).page(params[:page])
    )
  end

  def show
    add_breadcrumb "#{@apartment.name}の詳細情報", apartment_path(@apartment.id)

    track_visit_into_session
  end

  def filtered_index
    add_breadcrumb 'バンコクの物件一覧'

    province_id     = Province.where(original_id: params[:province])[0].id unless params[:province].nil?
    district_id     = District.where(original_id: params[:district])[0].id unless params[:district].nil?
    sub_district_id = Subdistrict.where(original_id: params[:sub_district])[0].id unless params[:sub_district].nil?

    @apartments = Front::ApartmentDecorator.decorate_collection(
        Apartment.published
            .includes(
                :apartment_info
            ).where(
            province_id:    province_id,
            district_id:    district_id,
            subdistrict_id: sub_district_id,
        ).page(params[:page])
    )

    render :index
  end

  private
    def set_apartment
      @apartment = Front::ApartmentDecorator.decorate(
          Apartment.find(params[:id])
      )
    end
end
