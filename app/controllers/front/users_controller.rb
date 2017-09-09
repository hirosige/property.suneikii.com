class Front::UsersController < FrontController
  before_filter :authenticate_user!
  before_action :set_user, only: [:profile, :edit, :update, :update_profile, :name, :address, :email]

  def profile
    add_breadcrumb "マイページ"
  end

  def edit
    add_breadcrumb "登録情報変更"
  end

  def name
    add_breadcrumb "氏名変更"
  end

  def address
    add_breadcrumb "住所情報変更"
  end

  def email
    add_breadcrumb "配信用メールアドレス変更"
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_edit_path, flash: { :success => "#{@user.name}を更新しました。" } }
      else
        format.html { render :edit }
      end
    end
  end

  def update_profile
    respond_to do |format|

      @user.profile.address = params[:user][:profile][:address] unless params[:user][:profile][:address].nil?
      @user.profile.postal_code = params[:user][:profile][:postal_code] unless params[:user][:profile][:postal_code].nil?
      @user.profile.reciever_email = params[:user][:profile][:reciever_email] unless params[:user][:profile][:reciever_email].nil?

      if @user.save
        format.html { redirect_to user_edit_path, flash: { :success => "#{@user.name}を更新しました。" } }
      else
        format.html { render :edit }
      end
    end
  end

  private
    def set_user
      @user = User.find(current_user.id)

      if @user.profile.nil?
        @user.build_profile
      end
    end

  def user_params
    params.require(:user).permit(
        :name,
        profile: [
            :address,
            :postal_code
        ]
    )
  end
end
