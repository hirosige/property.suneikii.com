class Front::SessionsController < FrontController
  def logout
    add_breadcrumb "ログアウト"
  end

  def visited
    add_breadcrumb "最近見た物件リスト"

    p '#### ここだよ ####'
    @foot_stamps = FootStamp.new(
        :apartment_sessions => session[:apartments_session_list]
    )
    @foot_stamps.build_properties
  end
end
