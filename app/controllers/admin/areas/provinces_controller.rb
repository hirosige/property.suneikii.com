class Admin::Areas::ProvincesController < AdminController
  before_action :set_province, only: [:show]

  def index
    @provinces = Province.all

    if request.xhr?
      p 'ajax だよーー'

      render :json => @provinces
    end
  end

  def show
    if request.xhr?
      p '[show] ajax だよーー'

      render :json => @province.districts
    end
  end

  private
    def set_province
      @province = Province.find(params[:id])
    end
end
