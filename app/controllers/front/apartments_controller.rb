class Front::ApartmentsController < FrontController
  before_action :set_apartment, only: [:show]

  def index
    @apartments = Front::ApartmentDecorator.decorate_collection(
        Apartment.includes(:apartment_info).page(params[:page])
    )
  end

  def show
  end

  private
    def set_apartment
      @apartment = Front::ApartmentDecorator.decorate(
          Apartment.find(params[:id])
      )
    end
end
