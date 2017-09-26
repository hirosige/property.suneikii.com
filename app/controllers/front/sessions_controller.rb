class Front::SessionsController < FrontController
  def logout
    add_breadcrumb t('front.sessions.logout.title')
  end

  def visited
    add_breadcrumb t('front.sessions.watched.title')

    @foot_stamps = FootStamp.new(
        :apartment_sessions => session[:apartments_session_list]
    )
    @foot_stamps.build_properties
  end
end
