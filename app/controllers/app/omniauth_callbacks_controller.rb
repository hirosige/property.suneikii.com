class App::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  layout "properties_layout"

  def github
    callback_from :github
  end

  def facebook
    callback_from :facebook
  end

  def twitter
    callback_from :twitter
  end

  def instagram
    callback_from :instagram
  end

  def flickr
    callback_from :flickr
  end

  def foursquare
    callback_from :foursquare
  end

  def callback_from(provider)
    p provider.to_s
    provider = provider.to_s

    session[:omniauth] = request.env['omniauth.auth']
    if User.has_oauth_user_exist(request.env['omniauth.auth'])
      @user = User.find_for_oauth(request.env['omniauth.auth'])

      if @user.persisted?
        flash[:success] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
        @user.skip_confirmation!
        sign_in_and_redirect @user, event: :authentication
      else
        session["devise.#{provider}_data"] = request.env['omniauth.auth']
        redirect_to new_user_registration_url
      end
    else
      flash[:success] = 'もう少しで登録完了です'
      redirect_to user_input_path, :id => 'hello'
    end
  end

  def input
  end

  def complete
    p "##### user name #####"
    p params
    p session[:omniauth]
    p params[:user][:name]

    provider = session[:omniauth].provider

    @user = User.create_oauth_user(session[:omniauth], params[:user][:name])

    if @user.persisted?
      flash[:success] = I18n.t('devise.omniauth_callbacks.success', kind: provider.capitalize)
      @user.skip_confirmation!
      sign_in_and_redirect @user, event: :authentication
    else
      session["devise.#{provider}_data"] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end

  end
end
