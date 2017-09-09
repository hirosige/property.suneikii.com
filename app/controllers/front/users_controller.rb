class Front::UsersController < FrontController
  before_filter :authenticate_user!
  before_action :set_user, only: [:profile, :edit]

  def profile
    add_breadcrumb "マイページ"

  end

  def edit
    add_breadcrumb "登録情報変更"
  end

  def update
  end

  private
    def set_user
      @user = User.find(current_user.id)
    end
end
