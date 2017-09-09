class Front::FavoritesController < FrontController
  before_filter :authenticate_user!

  def index
    if request.xhr?
      @user = User.find(current_user.id)
      favorites = @user.favorites

      render json: { status: 'success', favorites: favorites }
    else
      render :nothing => true
    end
  end

  def like
    if request.xhr?
      @apartment = Apartment.find(params[:id])

      @user = User.find(current_user.id)
      @user.favorites.build(:apartment_id => params[:id])

      if @user.save
        render json: { status: 'success', apartment: @apartment }
      else
        p @user.favorites
        render json: { status: 'failure', apartment: @apartment, errors: @user }
      end

    else
      render :nothing => true
    end

  end
end
