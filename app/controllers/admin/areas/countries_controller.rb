class Admin::Areas::CountriesController < AdminController
  before_action :set_country, only: [:show]

  def index
    @countries = Country.all

    if request.xhr?
      p 'ajax だよーー'

      render :json => @countries
    end
  end

  def show
    if request.xhr?
      p '[show] ajax だよーー'

      render :json => @country.provinces
    end
  end

  private
    def set_country
      @country = Country.find(params[:id])
    end
end
