class Front::SiteInquiryController < FrontController
  include Mobylette::RespondToMobileRequests

  def index
    @site_inquiry = SiteInquiry.new
    # render :action => 'index'

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  def confirm
    @site_inquiry = SiteInquiry.new(site_inquiry_params)
    if @site_inquiry.valid?
      respond_to do |format|
        format.html
        format.mobile
      end
    else
      render :action => 'index'
    end
  end

  def thanks
    @site_inquiry = SiteInquiry.new(site_inquiry_params)
    @site_inquiry.save

    SiteInquiryMailer.received_email(@site_inquiry).deliver

    respond_to do |format|
      format.html
      format.mobile
    end
  end

  private
    def site_inquiry_params
      params.require(:site_inquiry).permit(
          :name, :email, :body
      )
    end
end
