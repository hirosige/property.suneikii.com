class Front::FavoritesController < FrontController
  before_filter :authenticate_user!

  def index
    if request.xhr?
      favorites = current_user.favorites

      render json: { status: 'success', favorites: favorites }
    else
      add_breadcrumb "お気に入りリスト"

      @favorites = Favorite.personal_favorites(current_user.id)
    end
  end

  def like
    if request.xhr?
      @apartment = Apartment.find(params[:id])

      favorite = Favorite.new(
          :apartment_id => params[:id],
          :user_id => current_user.id
      )

      favorite.set_as_apartment

      if favorite.save
        render json: { status: 'success', apartment: @apartment }
      else
        render json: { status: 'failure', apartment: @apartment, errors: favorite }
      end

    else
      render :nothing => true
    end

  end
end
