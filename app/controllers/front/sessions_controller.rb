class Front::SessionsController < FrontController
  include Mobylette::RespondToMobileRequests

  def logout
    add_breadcrumb t('front.sessions.logout.title')

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def visited
    add_breadcrumb t('front.sessions.watched.title')

    @foot_stamps = FootStamp.new(
        :apartment_sessions => session[:apartments_session_list],
                :land_sessions => session[:lands_session_list],
                :condo_sessions => session[:condos_session_list]
    )
    @foot_stamps.build_properties

    respond_to do |format|
      format.html
      format.mobile
    end
  end
end
