class Admin::Members::UsersController < AdminController
  before_action :set_user, only: [:show, :destroy, :toggle_ban]
  before_action :set_breadcrumps_base

  def index
    set_users
  end

  def show
  end

  def toggle_ban
    # true/false upside down
    status = @user.blacklist_flg ^= true
    @user.update(:blacklist_flg => status)

    set_users
    render :action => 'index'
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_users
      @users = UsersDecorator.decorate(
        UserDecorator.decorate_collection(
            User.accessible_by(current_ability).page(params[:page])
        )
      )
    end

    def set_breadcrumps_base
      add_breadcrumb t('admin.sidemenu_5.title')
      add_breadcrumb t('admin.users.title')
    end
end
