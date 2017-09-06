class Front::UsersController < FrontController
  before_filter :authenticate_user!
  before_action :set_user, only: [:profile, :edit]

  def profile
  end

  def edit
  end

  def update
  end

  def deny

  end

  private
    def set_user
      @user = User.find(current_user.id)
    end
end
