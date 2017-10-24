class Front::FavoritesController < FrontController
  before_filter :authenticate_user!

  def index
    if request.xhr?
      favorites = current_user.favorites

      render json: { status: 'success', favorites: favorites }
    else
      add_breadcrumb "お気に入りリスト"

      @favorites = current_user.favorites.page(params[:page])
    end
  end

  def like
    if request.xhr?
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

    else
      render :nothing => true
    end

  end
end
