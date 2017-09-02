class Front::ApartmentsController < FrontController
  before_action :set_apartment, only: [:show]

  def index
    @apartments = Front::ApartmentDecorator.decorate_collection(
        Apartment.published.includes(:apartment_info).page(params[:page])
    )
  end

  def show
    track_visit_into_session
  end

  private
    def set_apartment
      @apartment = Front::ApartmentDecorator.decorate(
          Apartment.find(params[:id])
      )
    end
end
