class Admin::Areas::DistrictsController < AdminController
  before_action :set_district, only: [:show]

  def index
    @disctricts = District.all

    if request.xhr?
      p 'ajax だよーー'

      render :json => @disctricts
    end
  end

  def show
    if request.xhr?
      p '[show] ajax だよーー'

      render :json => @district.subdistricts
    end
  end

  private
    def set_district
      @district = District.find(params[:id])
    end
end
