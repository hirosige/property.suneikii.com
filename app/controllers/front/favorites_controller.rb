class Front::FavoritesController < FrontController
  before_filter :authenticate_user!

  def index
    if request.xhr?
      favorites = current_user.favorites

      render json: { status: 'success', favorites: favorites }
    else
      add_breadcrumb "お気に入りリスト"

      @favorites = current_user.favorites
                       .includes(apartment: :apartment_info)
                       .includes(apartment: :room_type)
                       .includes(:land)
                       .page(params[:page])
    end
  end

  def like
    if request.xhr?

      case params[:type]

      when 'apartment' then
        like_apartment

      when 'land' then
        like_land

      else
        render :nothing => true
      end

    else
      render :nothing => true
    end

  end

  private
    def like_apartment
      @apartment = Apartment.find(params[:id])

      favorite = Favorite.new(
          :apartment_id => params[:id],
          :user_id => current_user.id
      )

      if favorite.valid?
        favorite.set_as_apartment
        render json: { status: 'success', apartment: @apartment }
      else
        p favorite.errors
        render json: { status: 'failure', apartment: @apartment, errors: favorite }
      end
    end

  def like_land
    @land = Land.find(params[:id])

    favorite = Favorite.new(
        :land_id => params[:id],
        :user_id => current_user.id
    )

    if favorite.valid?
      favorite.set_as_land
      render json: { status: 'success', land: @land }
    else
      p favorite.errors
      render json: { status: 'failure', land: @land, errors: favorite }
    end
  end
end
